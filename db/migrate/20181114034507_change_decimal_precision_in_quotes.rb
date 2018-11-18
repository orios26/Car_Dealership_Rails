class ChangeDecimalPrecisionInQuotes < ActiveRecord::Migration[5.2]
  def change
    change_table :quotes do |t|
      t.remove :wholesale_price,:markup_price,:total_price,:tax,:down_payment,:interest_rate
      t.decimal :wholesale_price, precision: 10, scale:3
      t.decimal :markup_price, precision: 10, scale:3
      t.decimal :total_price, precision: 10, scale:3
      t.decimal :tax, precision: 10, scale:3
      t.decimal :down_payment, precision: 10, scale:3
      t.decimal :interest_rate, precision: 10, scale:3
    end
  end
end
