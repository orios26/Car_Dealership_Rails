class CreateManagerTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_types do |t|

      t.timestamps
    end
  end
end
