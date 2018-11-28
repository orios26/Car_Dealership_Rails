class RemoveIndexVehiclesOnModel < ActiveRecord::Migration[5.2]
  def change
    remove_index :vehicles, column: :model_id
  end
end
