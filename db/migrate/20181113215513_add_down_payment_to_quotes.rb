class AddDownPaymentToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :down_payment, :decimal
  end
end
