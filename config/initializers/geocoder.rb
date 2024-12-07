Geocoder.configure(
  lookup: :google,               # GeocodingサービスとしてGoogleを指定
  api_key: ENV['GOOGLE_API_KEY'], # ここにGoogle APIキーを設定
  timeout: 5,                     # タイムアウト時間（秒）
  units: :km                      # 距離単位
)
