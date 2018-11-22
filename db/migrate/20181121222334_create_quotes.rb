class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.references :vehicle, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :employee, foreign_key: true
      t.integer :term
      t.decimal :finance_amount
      t.decimal :monthly_payment
      t.decimal :wholesale_price
      t.decimal :markup_price
      t.decimal :total_price
      t.decimal :tax
      t.decimal :down_payment
      t.decimal :interest_rate
    end
  end
end
