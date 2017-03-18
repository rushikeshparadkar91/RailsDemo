class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.datetime :from
      t.datetime :to
      t.integer :number_of_people
      t.string :location
      t.decimal :initial_expense
      t.boolean :active
      t.boolean :cash
      t.boolean :paid

      t.timestamps
    end
  end
end
