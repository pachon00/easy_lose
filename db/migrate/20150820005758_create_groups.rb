class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :time
      t.string :day

      t.timestamps null: false
    end
  end
end
