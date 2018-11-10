class AddNameToManagerType < ActiveRecord::Migration[5.2]
  def change
    add_column :manager_types, :name, :string
  end
end
