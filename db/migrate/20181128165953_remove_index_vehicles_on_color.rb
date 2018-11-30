class RemoveIndexVehiclesOnColor < ActiveRecord::Migration[5.2]
  def change
    remove_index :vehicles, column: :color_id
  end
end
