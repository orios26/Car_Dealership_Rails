class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.references :employee_type, foreign_key: true

      t.timestamps
    end
  end
end
