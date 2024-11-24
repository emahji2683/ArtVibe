# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

require "csv"

CSV.foreach('db/seeds/csv/museum_each_page_edited.csv', headers: true) do |row|
  Museum.create(
    name: row['name'],
    location: row['location'],
    business_hours: row['business_hours'],
    admission_fees: row['admission_fees'],
    website_url: row['website_url'],
    phone_number: row['phone_number']
  )
end
