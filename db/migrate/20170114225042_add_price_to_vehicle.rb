class AddPriceToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :price, :string
  end
end
