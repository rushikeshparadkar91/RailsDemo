class AddDriverToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :driver, foreign_key: true
  end
end
