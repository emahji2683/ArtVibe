namespace :museums_photo do
  task to_db: :environment do
    require 'csv'
    file_path = Rails.root.join('db', 'seeds', 'csv', 'wiki_photos.csv')
    csv_data = CSV.read(file_path, headers: true)
    csv_data.each do |data|
      Museum.find_each do |museum|
        if museum.name == data["name"]
          museum.photo_url = data["photo_url"]
          museum.save
        else
        end
      end
    end
  end
end
