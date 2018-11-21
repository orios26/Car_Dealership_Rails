class DropSalesPeople < ActiveRecord::Migration[5.2]
  def change
    drop_table :sales_people
  end
end
