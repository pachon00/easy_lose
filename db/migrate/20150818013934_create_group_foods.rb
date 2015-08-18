class CreateGroupFoods < ActiveRecord::Migration
  def change
    create_table :group_foods do |t|
      t.string :time
      t.string :day
      t.integer :id_food

      t.timestamps null: false
    end
    add_index :group_foods, :id_food
  end
end
