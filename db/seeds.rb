# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Agent.create(staff_no: 'AGENT-1', first_name: 'Bruce', last_name: 'Wayne')
Agent.create(staff_no: 'AGENT-2', first_name: 'Barbara', last_name: 'Gordon')

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

osamu_prop = Property.new(property_no: 'OSAMU-1', street_1: '1 jiro osamu street', suburb: 'Osamu', post_code: 2000)
osamu_prop.landlord = Landlord.first
osamu_prop.state = State.first
osamu_prop.save!

Property.create(property_no: 'VARGAS-1',
                street_1: '1 santiago vargas street',
                suburb: 'Vargas',
                post_code: 4000,
                landlord: Landlord.second,
                state: State.second)
Property.create(property_no: 'VARGAS-2',
                street_1: '2 santiago vargas street',
                suburb: 'Vargas',
                post_code: 4000,
                landlord: Landlord.second,
                state: State.second)

cross_prop_1 = Property.new(property_no: 'CROSS-1', street_1: '1 george cross road', suburb: 'Cross', post_code: 2010, state: State.first)
cross_prop_2 = Property.new(property_no: 'CROSS-2', street_1: '2 george cross road', suburb: 'Cross', post_code: 2010, state: State.first)
cross_prop_3 = Property.new(property_no: 'CROSS-3', street_1: '3 george cross road', suburb: 'Cross', post_code: 2010, state: State.first)
cross = Landlord.third
cross.properties << cross_prop_1
cross.properties << cross_prop_2
cross.properties << cross_prop_3
cross.save!

Property.create(property_no: 'ZAVIMBE-1',
                street_1: '1 david zavimbe street',
                suburb: 'Zavimbe',
                post_code: 3000,
                landlord: Landlord.fourth,
                state: State.third)
Property.create(property_no: 'FOX-1',
                street_1: '1 tiffany fox street',
                suburb: 'Fox',
                post_code: 3000,
                landlord: Landlord.fifth,
                state: State.third)
Property.create(property_no: 'THOMAS-1',
                street_1: '1 duke thomas street',
                suburb: 'Thomas',
                post_code: 3000,
                landlord: Landlord.last,
                state: State.third)

Lease.create(agent: Agent.first,
             property: Property.first,
             tenant: Tenant.first,
             starts: Date.parse('2015-01-01'),
             expires: Date.parse('2016-01-01'))
Lease.create(agent: Agent.first,
            property: Property.second,
            tenant: Tenant.second,
            starts: Date.parse('2014-01-01'),
            expires: Date.parse('2015-01-01'))
Lease.create(agent: Agent.first,
            property: Property.third,
            tenant: Tenant.third,
            starts: Date.parse('2015-01-01'),
            expires: Date.parse('2017-01-01'))
Lease.create(agent: Agent.second,
            property: Property.fourth,
            tenant: Tenant.fourth,
            starts: Date.parse('2015-01-01'),
            expires: Date.parse('2016-01-01'))
Lease.create(agent: Agent.second,
            property: Property.fifth,
            tenant: Tenant.fifth,
            starts: Date.parse('2015-01-01'),
            expires: Date.parse('2016-01-01'))
Lease.create(agent: Agent.second,
            property: Property.last,
            tenant: Tenant.last,
            starts: Date.parse('2013-01-01'),
            expires: Date.parse('2014-01-01'))
