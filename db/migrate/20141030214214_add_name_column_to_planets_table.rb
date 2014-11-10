class AddNameColumnToPlanetsTable < ActiveRecord::Migration
  def change
    add_column :planets, :name, :string
  end
end
