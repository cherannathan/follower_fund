# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all
Investment.destroy_all

tata = User.create!(last_name: 'tata', first_name: 'yaya', email: 'tatayaya@gmail.com', password: '123456', bio: 'coucou coucou coucou coucou coucou', role: 'creator', pseudo: 'tatafefefefyaya')
User.create(last_name: 'tata', first_name: 'yaya', email: 'tatayayaya@gmail.com', password: '123456', bio: 'coucou coucou coucou coucou coucou', role: 'creator', pseudo: 'tatafefefeyaya')
User.create(last_name: 'tata', first_name: 'yaya', email: 'tatayoyoaya@gmail.com', password: '123456', bio: 'coucou coucou coucou coucou coucou', role: 'creator', pseudo: 'tatayazzzzya')
User.create(last_name: 'tata', first_name: 'yaya', email: 'tatayaylalalalaa@gmail.com', password: '123456', bio: 'coucou coucou coucou coucou coucou', role: 'creator', pseudo: 'tataydddaya')


projet1 = Project.create(user: tata, status: 'done', goal_amount: '2000', number_of_views: '240', revenue_split: '10%', deadline:'19 novembre 2020', revenue_generated:'20')

Investment.create(project: projet1, user: tata, price_cents: '200000', status: 'pending', user_thankyou: 'thanks mate')
