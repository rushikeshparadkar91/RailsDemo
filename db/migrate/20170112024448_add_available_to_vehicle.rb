class AddAvailableToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :available, :boolean
  end
end
