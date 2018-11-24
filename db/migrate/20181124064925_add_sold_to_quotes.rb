class AddSoldToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :sold, :boolean
  end
end
