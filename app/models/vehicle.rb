class Vehicle < ApplicationRecord
	has_many :photos
	has_many :trips
	belongs_to :driver

	def photos
		
	end
end
