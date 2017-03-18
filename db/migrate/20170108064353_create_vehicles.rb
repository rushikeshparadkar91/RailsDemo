class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :number
      t.string :region
      t.string :type
      t.integer :max_people

      t.timestamps
    end
  end
end
