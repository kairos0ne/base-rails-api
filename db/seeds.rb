# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Test User 

user = User.create({ name: Test, email: t@test.com, password: testpass })
client = Client.create([{name: Test Client, business_area: Test business area }, {}])
types = Type.create([{ type: Digital }, { type: Print }, { type:Outdoor }, { type:Audo Visual }])

