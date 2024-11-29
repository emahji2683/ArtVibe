class ChangeDatatypeRating01OfReviews < ActiveRecord::Migration[7.2]
  def change
    change_column :reviews, :rating01, :decimal
  end
end
