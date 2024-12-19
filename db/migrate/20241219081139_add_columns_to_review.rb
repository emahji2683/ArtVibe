class AddColumnsToReview < ActiveRecord::Migration[7.2]
  def change
    add_column :reviews, :exhibition_rate, :float
    add_column :reviews, :museum_design_rate, :float
    add_column :reviews, :access_rate, :float
    add_column :reviews, :museum_shop_rate, :float
  end
end
