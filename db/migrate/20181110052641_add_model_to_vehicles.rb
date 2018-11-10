class AddModelToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicles, :model, foreign_key: true
  end
end
