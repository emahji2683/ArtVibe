class AddColumnToInfomail < ActiveRecord::Migration[7.2]
  def change
    add_column :infomails, :content, :text
    add_column :infomails, :name, :string
  end
end
