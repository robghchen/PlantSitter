class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :species
      t.string :info
      t.string :img

      t.timestamps
    end
  end
end
