class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :height

      t.timestamps null: false
    end
  end
end