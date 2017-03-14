# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Test User 

user = User.create({ name: 'Scott', username: 'kairos0ne', email: 'sdpersonal.sd@gmail.com', password: 'testpass', password_confirmation: 'testpass' })
user = User.create({ name: 'Kairos', username: 'kairos', email: 'kairos0ne@icloud.com', password: 'testpass', password_confirmation: 'testpass' })
client = Client.create({ name: 'Client 1', business_area: 'Test the business focuse field', user_id: 1})
project = Project.create({ name: 'Project 1', description: 'Test the project description', client_id: 1})
epic = Epic.create({ epic: 'Some epic for testing', project_id: 1})
story = Story.create({ asa: 'Super Admin', iwant: 'To do something', sothat: 'Something happens', epic_id: 1})
given = Given.create({ given: 'Given Im signed into the system', story_id: 1})
occur = Occur.create({ occurs: 'When something happens', story_id: 1})
action = Action.create({ action: 'Then something happens', story_id: 1})
