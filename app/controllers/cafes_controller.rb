class CafesController < ApplicationController
  require 'net/http'

  def index
    # サンプルの緯度・経度 (美術館の位置を想定)
    @museum = Museum.find(params[:museum_id]) 
    lat = @museum.latitude || 35.6895  # 東京駅周辺の緯度
    lng = @museum.longitude || 139.6917 # 東京駅周辺の経度

    # Google Places API を呼び出してカフェ情報を取得
    @cafes = fetch_nearby_places(lat, lng, "cafe")
  end

  private

  # Google Places API でデータを取得
  def fetch_nearby_places(lat, lng, keyword)
    api_key = ENV['GOOGLE_API_KEY']
    base_url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json"
    uri = URI(base_url)
    params = {
      location: "#{lat},#{lng}",
      radius: 100, # 半径 1km
      keyword: keyword,
      key: api_key
    }
    uri.query = URI.encode_www_form(params)

    # API リクエスト
    response = Net::HTTP.get(uri)
    results = JSON.parse(response)["results"]
    results.each do |cafe|
      cafe['photo_url'] = fetch_cafe_photo(cafe['photos'].first['photo_reference']) if cafe['photos']
    end

    results
  end

  # Google Places APIからカフェの外観写真URLを取得
  def fetch_cafe_photo(photo_reference)
    api_key = ENV['GOOGLE_API_KEY']
    photo_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{photo_reference}&key=#{api_key}"
    photo_url
  end
end
