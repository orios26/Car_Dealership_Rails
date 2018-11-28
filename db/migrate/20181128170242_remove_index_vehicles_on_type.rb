class RemoveIndexVehiclesOnType < ActiveRecord::Migration[5.2]
  def change
    remove_index :vehicles, column: :type_id
  end
end
