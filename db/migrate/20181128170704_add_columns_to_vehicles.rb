class AddColumnsToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :make, :string
    add_column :vehicles, :model, :string
    add_column :vehicles, :color, :string
    add_column :vehicles, :type, :string
  end
end
