class CreateFoodsGroups < ActiveRecord::Migration
  def change
    create_table :foods_groups do |t|
      t.integer :food_id
      t.integer :group_id

      t.timestamps null: false
    end
    add_index :foods_groups, :food_id
    add_index :foods_groups, :group_id
  end
end
