class RemoveColumnsFromVehicles < ActiveRecord::Migration[5.2]
  def change
    remove_column :vehicles, :color_id
    remove_column :vehicles, :model_id
    remove_column :vehicles, :type_id
  end
end
