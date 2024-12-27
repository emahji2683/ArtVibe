class CreateInfomails < ActiveRecord::Migration[7.2]
  def change
    create_table :infomails do |t|
      t.timestamps
      t.name :string 
    end
  end
end
