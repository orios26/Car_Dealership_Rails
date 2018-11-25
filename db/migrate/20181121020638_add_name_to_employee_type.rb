class AddNameToEmployeeType < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_types, :name, :string
  end
end
