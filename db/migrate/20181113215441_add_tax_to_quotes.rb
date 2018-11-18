class AddTaxToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :tax, :decimal
  end
end
