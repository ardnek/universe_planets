class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.date :date
      t.string :location
      t.integer :mass
      t.boolean :life_forms
      t.text :description
    end
  end
end
