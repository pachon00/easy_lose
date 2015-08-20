class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :name
      t.integer :total_calories_day
      t.integer :foods_groups_id

      t.timestamps null: false
    end
    add_index :diets, :foods_groups_id
  end
end
