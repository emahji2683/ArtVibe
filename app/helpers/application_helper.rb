module ApplicationHelper
  def generate_photo_url(photo)
    "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{photo.photo_reference}&key=#{ENV['GMAP_API_KEY']}"   
  end
end
