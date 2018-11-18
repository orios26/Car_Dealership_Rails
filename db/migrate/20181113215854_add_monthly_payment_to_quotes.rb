class AddMonthlyPaymentToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :monthly_payment, :decimal
  end
end
