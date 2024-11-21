class AddColumnsToMuseum < ActiveRecord::Migration[7.2]
  def change
    add_column :museums, :business_hours, :text
    add_column :museums, :admission_fees, :integer
    add_column :museums, :website_url, :string
    add_column :museums, :phone_number, :string
  end
end
