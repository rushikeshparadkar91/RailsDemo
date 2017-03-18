class AddVehicleToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_reference :photos, :vehicle, foreign_key: true
  end
end
