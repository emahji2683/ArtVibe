class AddColumnsToMuseums < ActiveRecord::Migration[7.2]
  def change
    add_column :museums, :latitude, :float
    add_column :museums, :longitude, :float
  end
end
