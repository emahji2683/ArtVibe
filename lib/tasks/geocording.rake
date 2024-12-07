namespace :geocode do
  task to_csv: :environment do
    require 'csv'
    file_path = Rails.root.join('public', 'geocoded_addresses.csv')
    headers = ['Address', 'Latitude', 'Longitude']

    CSV.open(file_path, 'w', write_headers: true, headers: headers) do |csv|
      Museum.find_each do |museum|
        results = Geocoder.search(museum.location)
        csv << [museum.location, results.first.coordinates[0], results.first.coordinates[1]]
      end
    end
  end
end
