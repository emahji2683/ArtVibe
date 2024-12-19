class AddColumnToMuseumsPhotoUrl < ActiveRecord::Migration[7.2]
  def change
    add_column :museums, :photo_url, :string
  end
end
