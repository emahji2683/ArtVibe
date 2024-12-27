class CreateInfomails < ActiveRecord::Migration[7.2]
  def change
    create_table :infomails do |t|
      t.timestamps
    end
    remove_column :infomails, :name, :string
  end
end
