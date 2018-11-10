class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.references :vehicle, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :sales_person, foreign_key: true
      t.decimal :wholesale_price
      t.decimal :markup_price
      t.decimal :total_price

      t.timestamps
    end
  end
end
