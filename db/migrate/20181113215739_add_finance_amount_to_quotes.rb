class AddFinanceAmountToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :finance_amount, :decimal
  end
end
