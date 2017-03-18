class AddCityToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :city, :string
  end
end
