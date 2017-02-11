# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Test User 

user = User.create({ name: 'Scott', email: 'sdpersonal.sd@gmail.com', password: 'testpass', password_confirmation: 'testpass' })
user = User.create({ name: 'Kairos', email: 'kairos0ne@icloud.com', password: 'testpass', password_confirmation: 'testpass' })
client = Client.create({ name: 'Client 1', business_area: 'Test the business focuse field', user_id: 1})
client = Client.create({ name: 'Client 2', business_area: 'Test the business focuse field', user_id: 2})
client = Client.create({ name: 'Client 3', business_area: 'Test the business focuse field', user_id: 1})
client = Client.create({ name: 'Client 4', business_area: 'Test the business focuse field', user_id: 1})
client = Client.create({ name: 'Client 5', business_area: 'Test the business focuse field', user_id: 1})
client = Client.create({ name: 'Client 6', business_area: 'Test the business focuse field', user_id: 1})
client = Project.create({ name: 'Project 1', description: 'Test the project description', client_id: 1})
client = Project.create({ name: 'Project 2', description: 'Test the project description', client_id: 1})
client = Project.create({ name: 'Project 3', description: 'Test the project description', client_id: 1})
client = Project.create({ name: 'Project 4', description: 'Test the project description', client_id: 1})
client = Project.create({ name: 'Project 1', description: 'Test the project description', client_id: 3})
client = Project.create({ name: 'Project 2', description: 'Test the project description', client_id: 3})
client = Project.create({ name: 'Project 3', description: 'Test the project description', client_id: 3})
client = Project.create({ name: 'Project 4', description: 'Test the project description', client_id: 3})
client = Project.create({ name: 'Project 1', description: 'Test the project description', client_id: 4})
client = Project.create({ name: 'Project 2', description: 'Test the project description', client_id: 4})
client = Project.create({ name: 'Project 3', description: 'Test the project description', client_id: 4})
client = Project.create({ name: 'Project 4', description: 'Test the project description', client_id: 4})
client = Epic.create({ epic: 'Create projects', project_id: 1})
client = Epic.create({ epic: 'I can provide feedback', project_id: 1})

