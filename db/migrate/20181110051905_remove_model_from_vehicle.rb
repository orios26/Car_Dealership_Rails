class RemoveModelFromVehicle < ActiveRecord::Migration[5.2]
  def change
    remove_column :vehicles, :model, :string
  end
end
