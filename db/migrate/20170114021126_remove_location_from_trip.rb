class RemoveLocationFromTrip < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :location, :string
    remove_column :trips, :city, :string
    rename_column :trips, :cash, :payment_type
    add_reference :trips, :address, foreign_key: true
  end
end
