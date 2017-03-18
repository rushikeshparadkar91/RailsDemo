class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :license_no
      t.string :phone

      t.timestamps
    end
  end
end
