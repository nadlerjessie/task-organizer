class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :board_id
      
      t.timestamps null: false
    end
  end
end