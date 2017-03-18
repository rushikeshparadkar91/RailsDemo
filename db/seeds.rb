# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

drivers = Driver.create([{name: 'raju', license_no: '123456', phone:'4806280719'},
	{name: 'kamla', license_no: 'license', phone:'0712309721'}
	])

vehicle = Vehicle.create([{ number: '907567', region: 'mumbai', vehicle_type: 'Sedan', max_people: 4, available: true, driver: drivers.first, price: "10"},
		{ number: '907567', region: 'mumbai', vehicle_type: 'Hatchback', max_people: 4, available: true, driver: drivers.second, price: "9.5"},
		{ number: '098765', region: 'kansas', vehicle_type: 'SUV', max_people: 7, available: false, driver: drivers.second, price: "11"},
		{ number: '123456', region: 'kansas', vehicle_type: 'Hatchback', max_people: 4, available: true, driver: drivers.first, price: "9"},
		{ number: '564736', region: 'kansas', vehicle_type: 'Van', max_people: 9, available: true, driver: drivers.second, price: "15"}
		])



