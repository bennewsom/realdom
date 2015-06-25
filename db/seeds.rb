# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Tenant.create(name: 'Alfred Pennyworth', gender: 'Male', dob: Date.parse('1965-09-10'))
Tenant.create(name: 'Jason Todd', gender: 'Male', dob: Date.parse('1984-04-14'))
Tenant.create(name: 'Damian Wayne', gender: 'Male', dob: Date.parse('1992-01-30'))
Tenant.create(name: 'Kate Kane', gender: 'Female', dob: Date.parse('1982-11-13'))
Tenant.create(name: 'Selina Kyle', gender: 'Female', dob: Date.parse('1988-07-13'))
Tenant.create(name: 'Stephanie Brown', gender: 'Female', dob: Date.parse('1978-06-10'))

Landlord.create(name: 'Jiro Osamu', gender: 'Male', dob: Date.parse('1993-05-11'))
Landlord.create(name: 'Santiago Vargas', gender: 'Male', dob: Date.parse('1983-06-17'))
Landlord.create(name: 'George Cross', gender: 'Male', dob: Date.parse('1983-06-17'))
Landlord.create(name: 'David Zavimbe', gender: 'Male', dob: Date.parse('1973-04-18'))
Landlord.create(name: 'Tiffany Fox', gender: 'Female', dob: Date.parse('1993-07-16'))
Landlord.create(name: 'Duke Thomas', gender: 'Male', dob: Date.parse('1996-11-01'))

# TODO: Uncomment this after the Country and State class is designed and built
oz = Country.create(name: 'Australia')
nz = Country.create(name: 'New Zealand')

State.create(name: 'NSW', country: oz)
State.create(name: 'QLD', country: oz)
State.create(name: 'VIC', country: oz)
State.create(name: 'NT', country: oz)
State.create(name: 'WA', country: oz)
State.create(name: 'SA', country: oz)
State.create(name: 'TAS', country: oz)
State.create(name: 'ACT', country: oz)
