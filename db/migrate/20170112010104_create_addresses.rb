class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :pickup_location
      t.string :city

      t.timestamps
    end
  end
end
