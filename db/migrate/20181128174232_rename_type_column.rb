class RenameTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :vehicles, :type, :car_type
  end
end
