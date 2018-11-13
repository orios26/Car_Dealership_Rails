class AddInterestRateToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :interest_rate, :decimal
  end
end
