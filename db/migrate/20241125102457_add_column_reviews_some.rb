class AddColumnReviewsSome < ActiveRecord::Migration[7.2]
  def change
    add_column :reviews, :rating01, :integer 
    add_column :reviews, :body, :text 
  end
end
