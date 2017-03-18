class Trip < ApplicationRecord
	belongs_to :user
	belongs_to :driver
	belongs_to :vehicle
	has_one :address
end
