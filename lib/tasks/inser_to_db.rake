namespace :geocode do
  task to_db: :environment do
    require 'csv'
    file_path = Rails.root.join('public', 'geocoded_addresses.csv')
    csv_data = CSV.read(file_path, headers: true)
    csv_data.each do |data|
      Museum.find_each do |museum|
        if museum.location == data["Address"]
          museum.latitude = data["Latitude"]
          museum.longitude = data["Longitude"]
          museum.save
        else
        end
      end
    end
  end
end
