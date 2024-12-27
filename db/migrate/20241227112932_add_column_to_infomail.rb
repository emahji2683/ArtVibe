class AddColumnToInfomail < ActiveRecord::Migration[7.2]
  def change
    add_column :infomails, :content, :text
  end
end
