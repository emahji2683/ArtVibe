class ChangePrecisionRating01OfReviews < ActiveRecord::Migration[7.2]
  def change
    change_column :reviews, :rating01, :decimal, precision: 3, scale: 1
  end
end
