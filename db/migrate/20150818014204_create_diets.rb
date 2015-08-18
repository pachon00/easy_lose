class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :name
      t.integer :total_calories_day
      t.integer :id_group_food

      t.timestamps null: false
    end
  end
end
