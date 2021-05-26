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

require "open-uri"

file_1 = URI.open('https://i.ytimg.com/vi/-gYQYEcbS_g/maxresdefault.jpg')
user_1 = User.new(last_name: 'Johnson', first_name: 'Seb', email: 'thirdlegstudios@gmail.com', password: '123456', bio: 'One of the UKs most successful and prolific independent production companies. Please give us work, we will quite literally do anything for money.', role: 'creator', pseudo: 'Third Leg Studios')
user_1.photo.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
user_1.save!


file_2 = URI.open ('https://i.pinimg.com/originals/d1/9d/81/d19d817ebe7d4aeaf4a0b9d8884e7e65.png')
user_2 = User.new(last_name: 'sinbad', first_name: 'captain', email: 'nrajapandey@gmail.com', password: '123456', bio: 'A combination of funny and serious with the creative entrepreneur in mind. ', role: 'creator', pseudo: 'Captain Sinbad')
user_2.photo.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
user_2.save!

file_3 = URI.open ('https://www.chortle.co.uk/images/photos/small/the-pin-2020.jpg')
user_3 = User.new(last_name: 'majendie', first_name: 'rupert', email: 'rupert.majendie@gmail.com', password: '123456', bio: 'MR BOX provides the viewer with the newbies, the prevalent, the avant-garde, the broadest spectrum but best quality comedy all in one place.  It not only is a showcase for new talent but also somewhere for popular comedians to try out new ideas and see how they are received.', role: 'creator', pseudo: 'Mr Box')
user_3.photo.attach(io: file_3, filename: 'nes.png', content_type: 'image/png')
user_3.save!

file_4 = URI.open('https://healthyceleb.com/wp-content/uploads/2019/09/Lauren-Mae-in-an-Instagram-post-as-seen-in-August-2019.jpg')
user_4 = User.new(last_name: 'Mae', first_name: 'Lauren', email: 'laurenmaebeauty@gmail.com', password: '123456', bio: 'Why hello there! My name is Lauren and welcome to my channel! I love makeup and all things beauty so my channel is primarily centered on those topics but there are no limits so dont be surprised if you see something else pop up on here! Please do not be shy and come say hello!', role: 'creator', pseudo: 'Lauren Mae Beauty')
user_4.photo.attach(io: file_4, filename: 'nes.png', content_type: 'image/png')
user_4.save!

file_5 = URI.open('https://i.pinimg.com/736x/3b/b5/f7/3bb5f78b881f8508b199dca705ce95bf.jpg')
user_5 = User.new(last_name: 'Makeup', first_name: 'Ray', email: 'disisreyrey@influint.co', password: '123456', bio: 'Hi ! Welcome to my beauty channel ! Im here to share some of the things I love such as makeup, hair and fashion. I hope you guys enjoy and please subscribe to see new uploads.', role: 'creator', pseudo: 'DisisReyRey')
user_5.photo.attach(io: file_5, filename: 'nes.png', content_type: 'image/png')
user_5.save!


file_6 = URI.open('http://videogamekraken.com/wp-content/uploads/2020/03/MyLife.png')
user_6 = User.new(last_name: 'Garlson', first_name: 'Coury', email: 'mylifeinvideogames@gmail.com', password: '123456', bio: 'Join  Coury Carlson and Marc "Try4ce" Duddleson as they recollect their experiences with video games over the years, explain how to get the best picture from your retro consoles, and occasionally mash up new video games with VHS technology from the 80s and 90s. ', role: 'creator', pseudo: 'My Life in Gaming')
user_6.photo.attach(io: file_6, filename: 'nes.png', content_type: 'image/png')
user_6.save!

file_7 = URI.open('https://i.pinimg.com/originals/4f/28/eb/4f28ebb0323a47bfb86556f0ef56e96f.jpg')
user_7 = User.new(last_name: 'Garlsonn', first_name: 'Name', email: 'JustDrawCats@gmail.com', password: '123456', bio: 'Do you like games? I do too. I hope you like my channel; I hope to get more investment to grow a lot more! ', role: 'creator', pseudo: 'JustDrawCats')
user_7.photo.attach(io: file_7, filename: 'nes.png', content_type: 'image/png')
user_7.save!



project_photo_1 = URI.open('https://www.thelocal.fr/wp-content/uploads/2018/01/8a47b429fbc675d3e87ddbbf4c46b41410d97705a7206f1aa5aab8444c191caa-646x431.jpg')
project_1 = Project.new(user: user_1, status: 'done', goal_amount: '300', number_of_views: '50000', revenue_split: '20%', deadline: DateTime.now + 7, revenue_generated: '100', title: 'Comedy Project on French people', bio: 'We are looking for funding to shoot a video in Paris. The subject will be about stereotypes on French people. We hope this project will interest you, and also many others! We are very hopeful that we will get some traction based on our previous experience.', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
project_1.save!


project_photo_2 = URI.open('https://www.thespruce.com/thmb/UEoIFJEKC9iYGXe4yu7jIDP_tf8=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/most-popular-houseplants-4766580-2-71981826fb0a461786109b3e4f5aa09d.jpg')
project_2 = Project.new(user: user_1, status: 'fundraising', goal_amount: '500', number_of_views: '0', revenue_split: '20%', deadline: DateTime.now + 30, revenue_generated: '0', title: 'Comedy Project on plants', bio: 'We are looking for funding to shoot a video where we will talk about the millenial fascination with houseplants,especially during these Covid times.', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
project_2.save!

project_photo_3 = URI.open('https://static.hitek.fr/img/actualite/ill_m/1107649418/youtubegaming.webp')
project_3 = Project.new(user: user_1, status: 'fundraising', goal_amount: '1000', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 30, revenue_generated: '0', title: 'A new Gaming Channel', bio: 'We are looking for funding to create a new gaming genre of videos on our channel. We think this will go well with our current seleciton of comedy shorts! Invest and be part of the journey with us', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
project_3.save!


# project_photo_4 = URI.open('')
# project_4 = Project.new(user: user_1, status: 'fundraising', goal_amount: '1000', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 25, revenue_generated: '0', title: 'A new Gaming Channel', bio: 'We are looking for funding to create a new gaming genre of videos on our channel. We think this will go well with our current seleciton of comedy shorts! Invest and be part of the journey with us', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
# project_4.save!


project_photo_5 = URI.open('https://cdn.unitycms.io/image/ocroped/2001,2000,1000,1000,0,0/bdnzKHqeiIk/AqXCcY7Nqi_ACy1RJZaBPq.jpg')
project_5 = Project.new(user: user_2, status: 'fundraising', goal_amount: '300', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 16, revenue_generated: '0', title: 'Interview with Elon Musk', bio: 'This video is going to be crazy; I have an interview set up with Elon Musk! I will need to buy a new camera lens for this event so I hope you will invest', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_5.save!


project_photo_6 = URI.open('https://wearesocial-net.s3.amazonaws.com/wp-content/uploads/2020/11/gamer_room.jpg')
project_6 = Project.new(user: user_2, status: 'done', goal_amount: '1000', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 27, revenue_generated: '2000', title: 'Blogging in a volcano', bio: 'I want to create a video where I record in a live volcano! It is going to be mental', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_6.save!


project_photo_7 = URI.open('https://www.lux-review.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2020/02/Lux-Volcano.jpg.webp')
project_7 = Project.new(user: user_2, status: 'done', goal_amount: '1000', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 40, revenue_generated: '2000', title: 'Blogging in a volcano', bio: 'I want to create a video where I record in a live volcano! It is going to be mental', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_7.save!
