class CreateSalesPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_people do |t|
      t.string :last_name
      t.string :first_name
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
