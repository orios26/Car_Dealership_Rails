class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.references :color, foreign_key: true
      t.references :type, foreign_key: true
      t.string :model
      t.integer :year
      t.decimal :price

      t.timestamps
    end
  end
end
