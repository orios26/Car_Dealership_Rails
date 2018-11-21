class DropTableManagerType < ActiveRecord::Migration[5.2]
  def change
    drop_table :manager_types
  end
end
