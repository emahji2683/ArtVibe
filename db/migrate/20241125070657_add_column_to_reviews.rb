class AddColumnToReviews < ActiveRecord::Migration[7.2]
  def change
    add_reference :reviews, :museum, foreign_key: true
  end
end
