class RemoveIndexQuotesOnSalesPerson < ActiveRecord::Migration[5.2]
  def change
    remove_index "quotes", name: "index_quotes_on_sales_person_id"
  end
end
