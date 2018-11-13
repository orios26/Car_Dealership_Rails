class AddTermToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :term, :integer
  end
end
