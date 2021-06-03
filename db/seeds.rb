# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProjectGenre.destroy_all
Genre.destroy_all
Order.destroy_all
Investment.destroy_all
User.destroy_all
Project.destroy_all

require "open-uri"

p "Creating genres"
genres = ["Comedy", "Tech", "Gaming", "Makeup", "Tutorials"]
genres.each do |genre|
  Genre.create(name: genre)
end
p "Genres created"

p "Creating users"
file_1 = URI.open('https://s3-eu-west-1.amazonaws.com/images.castcall.blue-compass.com/portfolioraw/1421/1421292.jpg')
user_1 = User.new(last_name: 'Johnson', first_name: 'Seb', email: 'thirdlegstudios@gmail.com', password: '123456', bio: 'One of the UKs most successful and prolific independent production companies. Please give us work, we will quite literally do anything for money.', role: 'creator', pseudo: 'Third Leg Studios', youtube_link: 'https://www.youtube.com/embed/ot5TgvvOYdA', number_suscribers: 45500)
user_1.photo.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
user_1.save!


file_2 = URI.open ('https://i.pinimg.com/originals/d1/9d/81/d19d817ebe7d4aeaf4a0b9d8884e7e65.png')
user_2 = User.new(last_name: 'sinbad', first_name: 'captain', email: 'nrajapandey@gmail.com', password: '123456', bio: 'A combination of funny and serious with the creative entrepreneur in mind. ', role: 'creator', pseudo: 'Captain Sinbad', youtube_link: 'https://www.youtube.com/embed/2fcWGB-RABM', number_suscribers: 433000 )
user_2.photo.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
user_2.save!

file_3 = URI.open ('https://www.chortle.co.uk/images/photos/small/the-pin-2020.jpg')
user_3 = User.new(last_name: 'majendie', first_name: 'rupert', email: 'rupert.majendie@gmail.com', password: '123456', bio: 'MR BOX provides the viewer with the newbies, the prevalent, the avant-garde, the broadest spectrum but best quality comedy all in one place.  It not only is a showcase for new talent but also somewhere for popular comedians to try out new ideas.', role: 'creator', pseudo: 'Mr Box', youtube_link: 'https://www.youtube.com/embed/uuUiFeDphRg', number_suscribers: 50000)
user_3.photo.attach(io: file_3, filename: 'nes.png', content_type: 'image/png')
user_3.save!

file_4 = URI.open('https://images.unsplash.com/photo-1610067762007-1ca5a93f72b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')
user_4 = User.new(last_name: 'Mae', first_name: 'Lauren', email: 'laurenmaebeauty@gmail.com', password: '123456', bio: 'Why hello there! My name is Lauren and welcome to my channel! I love makeup and all things beauty so my channel is primarily centered on those topics but there are no limits so dont be surprised if you see something else pop up on here! Please do not be shy and come say hello!', role: 'creator', pseudo: 'Lauren Mae Beauty', youtube_link: 'https://www.youtube.com/embed/TKSnWLxghT0', number_suscribers: 100000 )
user_4.photo.attach(io: file_4, filename: 'nes.png', content_type: 'image/png')
user_4.save!

file_5 = URI.open('https://i.pinimg.com/736x/3b/b5/f7/3bb5f78b881f8508b199dca705ce95bf.jpg')
user_5 = User.new(last_name: 'Makeup', first_name: 'Ray', email: 'disisreyrey@influint.co', password: '123456', bio: 'Hi ! Welcome to my beauty channel ! Im here to share some of the things I love such as makeup, hair and fashion. I hope you guys enjoy and please subscribe to see new uploads.', role: 'creator', pseudo: 'DisisReyRey', youtube_link: 'https://www.youtube.com/embed/TFI7cq_Kp_E', number_suscribers: 137000)
user_5.photo.attach(io: file_5, filename: 'nes.png', content_type: 'image/png')
user_5.save!


file_6 = URI.open('https://images.unsplash.com/photo-1580234811497-9df7fd2f357e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2094&q=80')
user_6 = User.new(last_name: 'Garlson', first_name: 'Coury', email: 'mylifeinvideogames@gmail.com', password: '123456', bio: 'Join  Coury Carlson and Marc "Try4ce" Duddleson as they recollect their experiences with video games over the years, explain how to get the best picture from your retro consoles, and occasionally mash up new video games with VHS technology from the 80s and 90s. ', role: 'creator', pseudo: 'My Life in Gaming', youtube_link: 'https://www.youtube.com/embed/q4_TsXE-T68', number_suscribers: 192000)
user_6.photo.attach(io: file_6, filename: 'nes.png', content_type: 'image/png')
user_6.save!

file_7 = URI.open('https://images.unsplash.com/photo-1581217184843-03e7d8c07866?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
user_7 = User.new(last_name: 'Garlsonn', first_name: 'Justin', email: 'JustDrawCats@gmail.com', password: '123456', bio: 'Do you like games? I do too. I hope you like my channel; I hope to get more investment to grow a lot more! ', role: 'creator', pseudo: 'JustDrawCats', youtube_link: 'https://www.youtube.com/embed/hoVE5tJBFHw', number_suscribers: 25000)
user_7.photo.attach(io: file_7, filename: 'nes.png', content_type: 'image/png')
user_7.save!



file_8 = URI.open('https://images.unsplash.com/photo-1617259945337-93a28f685c54?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
user_8 = User.new(last_name: 'Shekh', first_name: 'Irina', email: 'irina.tech@gmail.com', password: '123456', bio: 'Hey, guys! My name is Irina and I am happy to see you on my channel😊 Stay tuned for more of my tech reviews! ', role: 'creator', pseudo: 'Irina Tech', youtube_link: 'https://www.youtube.com/embed/oNzfD67A6CM', number_suscribers: 26000)
user_8.photo.attach(io: file_8, filename: 'nes.png', content_type: 'image/png')
user_8.save!



file_9 = URI.open('https://mma.prnewswire.com/media/1075986/Tips_on_TV.jpg?p=publish&w=650')
user_9 = User.new(last_name: 'Taki', first_name: 'Paul', email: 'Sandimas206@gmail.com', password: '123456', bio: ' I provide unboxings, reviews with tutorials so you can get the most out of your smartphone! ', role: 'creator', pseudo: 'Paul Tech', number_suscribers: 56000, youtube_link: 'https://www.youtube.com/embed/YvFBxx76nLg' )
user_9.photo.attach(io: file_9, filename: 'nes.png', content_type: 'image/png')
user_9.save!

file_10 = URI.open('https://i.playboard.app/p/AATXAJw0qZ41vP0c1-MuVov8r0OuJGt-MlpJ38L74NU63w/default.webp')
user_10 = User.new(last_name: 'Lane', first_name: 'Tiffany', email: 'Sand23imas206@gmail.com', password: '123456', bio: ' Tiffany is a software developer who started her career in the modeling & fashion industry.  Tech can be very overwhelming for many at first as she experienced first hand entering into the industry. Tiff saw a gap to help ease people into what tech has to offer, to improve their day to day lives.//Tiff', pseudo: 'Tiff In Tech', role: 'creator',number_suscribers: 72000, youtube_link: 'https://www.youtube.com/embed/uD27CZEiuGk' )

user_10.photo.attach(io: file_10, filename: 'nes.png', content_type: 'image/png')
user_10.save!



file_11 = URI.open('https://comoto.imgix.net/blog_content_image/image/32694/gallery/Capturesfsfs.jpg?w=796&dpr=2&auto=format')
user_11 = User.new(last_name: 'Noob', first_name: 'Yammie', email: '232gmas206@gmail.com', password: '123456', bio: 'Where internet culture and motorcycle culture collide. We provide motorcycle edutainment in the hopes of creating more motorcyclists. Join us!', pseudo: 'Yammie Noob', role: 'creator', number_suscribers:888000, youtube_link: 'https://www.youtube.com/embed/UCkegEsZItEPQNItECCZA' )
user_11.photo.attach(io: file_11, filename: 'nes.png', content_type: 'image/png')
user_11.save!


file_12 = URI.open('https://images.unsplash.com/photo-1556037757-40496ad2fbc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
user_12 = User.new(last_name: 'May', first_name: 'James', email: 'jamesmay@gmail.com', password: '123456', bio: 'We create tutorials about anything and everything. From paper airplanes to japanese swords!', pseudo: 'Crazy Tutorials', role: 'creator', youtube_link: 'https://www.youtube.com/embed/j35JDZvP3eI', number_suscribers: 217000)
user_12.photo.attach(io: file_12, filename: 'nes.png', content_type: 'image/png')
user_12.save!

file_13 = URI.open('https://images.unsplash.com/photo-1514543250559-83867827ecce?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1911&q=80')
user_13 = User.new(last_name: 'Lasope', first_name: 'Tyler', email: 'devslopes@gmail.com', password: '123456', bio: 'Devslopes is the worlds most affordable and effective platform to learn how to code.', pseudo: 'Devslopes', role: 'creator', youtube_link: 'https://www.youtube.com/embed/sO1ctUNQ1k8', number_suscribers: 112000)
user_13.photo.attach(io: file_13, filename: 'nes.png', content_type: 'image/png')
user_13.save!

file_14 = URI.open('https://pianote.s3.amazonaws.com/sales/2021/fb-share-image.jpg')
user_14 = User.new(last_name: 'Pianote', first_name: 'Mary', email: 'mary206@gmail.com', password: '123456', bio: 'Pianote combines the latest technology with the traditional teaching approach to deliver the best online learning experience around.', pseudo: 'Pianote', role: 'creator', youtube_link: 'https://www.youtube.com/embed/BwoY7WIJ_es', number_suscribers: 816000)
user_14.photo.attach(io: file_14, filename: 'nes.png', content_type: 'image/png')
user_14.save!


file_16 = URI.open('https://images.sk-static.com/images/media/profile_images/artists/4697648/huge_avatar')
user_16 = User.new(last_name: 'Lauren', first_name: 'Mayhem', email: 'meyhemlauren@gmail.com', password: '123456', bio: 'Yo! I’m Meyhem Lauren. I make music. I make food. What more could you want? Catch me on my new cooking series, Fridge Diving, where I make meals from whatever is in my fridge. Simple as that.', pseudo: 'Meyhem Lauren', role: 'creator', youtube_link: 'https://www.youtube.com/embed/PR5CnNCtAp4', number_suscribers: 43000)
user_16.photo.attach(io: file_16, filename: 'nes.png', content_type: 'image/png')
user_16.save!

p "Users created"




p "Creating projects"

project_photo_1 = URI.open('https://www.thelocal.fr/wp-content/uploads/2018/01/8a47b429fbc675d3e87ddbbf4c46b41410d97705a7206f1aa5aab8444c191caa-646x431.jpg')
project_1 = Project.new(user: user_1, status: 'done', goal_amount: '300', number_of_views: '50000', revenue_split: '20%', deadline: DateTime.now + 7, revenue_generated: '100', title: 'Comedy Project on French people', bio: 'We are looking for funding to shoot a video in Paris. The subject will be about stereotypes on French people. We hope this project will interest you, and also many others! We are very hopeful that we will get some traction based on our previous experience.', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
project_1.photo.attach(io: project_photo_1, filename: 'hello.png', content_type: 'image/png')
project_1.save!

genre_1 = Genre.find_by(name: "Comedy")
project_genre_1 = ProjectGenre.create(project: project_1, genre: genre_1)


project_photo_2 = URI.open('https://www.thespruce.com/thmb/UEoIFJEKC9iYGXe4yu7jIDP_tf8=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/most-popular-houseplants-4766580-2-71981826fb0a461786109b3e4f5aa09d.jpg')
project_2 = Project.new(user: user_1, status: 'fundraising', goal_amount: '500', number_of_views: '0', revenue_split: '20%', deadline: DateTime.now + 30, revenue_generated: '0', title: 'Comedy Project on plants', bio: 'We are looking for funding to shoot a video where we will talk about the millenial fascination with houseplants,especially during these Covid times.', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
project_2.save!
project_2.photo.attach(io: project_photo_2, filename: 'hello.png', content_type: 'image/png')
genre_2 = Genre.find_by(name: "Comedy")
project_genre_2 = ProjectGenre.create(project: project_2, genre: genre_2)

project_photo_3 = URI.open('https://static.hitek.fr/img/actualite/ill_m/1107649418/youtubegaming.webp')
project_3 = Project.new(user: user_1, status: 'fundraising', goal_amount: '1000', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 30, revenue_generated: '0', title: 'A new Gaming Channel', bio: 'We are looking for funding to create a new gaming genre of videos on our channel. We think this will go well with our current seleciton of comedy shorts! Invest and be part of the journey with us', creator_thankyou: 'Thank you so much for investing in us and believing in us! It really means a lot; we hope that we will be able to reimburse you monetarily.')
project_3.photo.attach(io: project_photo_3, filename: 'hello.png', content_type: 'image/png')
project_3.save!
genre_3 = Genre.find_by(name: "Gaming")
project_genre_3 = ProjectGenre.create(project: project_3, genre: genre_3)


project_photo_5 = URI.open('https://cdn.unitycms.io/image/ocroped/2001,2000,1000,1000,0,0/bdnzKHqeiIk/AqXCcY7Nqi_ACy1RJZaBPq.jpg')
project_5 = Project.new(user: user_2, status: 'fundraising', goal_amount: '300', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 16, revenue_generated: '0', title: 'Interview with Elon Musk', bio: 'This video is going to be crazy; I have an interview set up with Elon Musk where he will teach us about space! I will need to buy a new camera lens for this event so I hope you will invest', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_5.photo.attach(io: project_photo_5, filename: 'hello.png', content_type: 'image/png')
project_5.save!
genre_5 = Genre.find_by(name: "Tutorials")
project_genre_5 = ProjectGenre.create(project: project_5, genre: genre_5)


project_photo_6 = URI.open('https://wearesocial-net.s3.amazonaws.com/wp-content/uploads/2020/11/gamer_room.jpg')
project_6 = Project.new(user: user_2, status: 'done', goal_amount: '1000', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 27, revenue_generated: '2000', title: 'Blogging in a volcano', bio: 'I want to create a video where I record in a live volcano! It is going to be mental', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_6.photo.attach(io: project_photo_6, filename: 'hello.png', content_type: 'image/png')
project_6.save!
genre_6 = Genre.find_by(name: "Tutorials")
project_genre_6 = ProjectGenre.create(project: project_6, genre: genre_6)

project_photo_7 = URI.open('https://www.insidehook.com/wp-content/uploads/2017/04/Casino-royale-1967-04-25-17-e1493139687821-1.jpg')
project_7 = Project.new(user: user_3, status: 'fundraising', goal_amount: '200', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 27, revenue_generated: '0', title: 'A very British comedy sketch', bio: 'James Bond and Mr  Bean together? Yes, Johnny English might exist but we want to do it way better. Please give us your money!', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_7.photo.attach(io: project_photo_7, filename: 'hello.png', content_type: 'image/png')
project_7.save!
genre_7 = Genre.find_by(name: "Comedy")
project_genre_7 = ProjectGenre.create(project: project_7, genre: genre_7)

project_photo_8 = URI.open('https://www.irishtimes.com/polopoly_fs/1.3143129.1499175788!/image/image.jpg_gen/derivatives/box_620_330/image.jpg')
project_8 = Project.new(user: user_3, status: 'fundraising', goal_amount: '300', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 40, revenue_generated: '0', title: 'Tech comedy sketch', bio: 'Apple users v Samsung users. Who will reign in a world with blue messages?', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_8.photo.attach(io: project_photo_8, filename: 'hello.png', content_type: 'image/png')
project_8.save!
genre_8 = Genre.find_by(name: "Comedy")
project_genre_8 = ProjectGenre.create(project: project_8, genre: genre_8)

project_photo_9 = URI.open('https://images.ctfassets.net/wlke2cbybljx/5jTqjlIw5jAbUiDfquMoIC/c03b3152d944e6655d1904d491d331f6/bigger-brighter-eyes-diamond-lips-kit-packshot.png')
project_9 = Project.new(user: user_4, status: 'fundraising', goal_amount: '2000', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 23, revenue_generated: '0', title: 'Trying the most expensive makeup in the world', bio: 'I really want to try the best makeup in the world and create a video about it. I think my fans will love it', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_9.photo.attach(io: project_photo_9, filename: 'hello.png', content_type: 'image/png')
project_9.save!
genre_9 = Genre.find_by(name: "Makeup")
project_genre_9 = ProjectGenre.create(project: project_9, genre: genre_9)

project_photo_10 = URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F35%2F2020%2F11%2F24%2Fbest-foot-massager-fb-2000.jpg&q=85')
project_10 = Project.new(user: user_4, status: 'done', goal_amount: '150', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 3, revenue_generated: '200', title: 'Trying the worst reviewed foot massage in New York', bio: 'Hopefully you will all fundraise with a new trend that I have seen on Youtube for trying out the worst reviewed places in my city!', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_10.photo.attach(io: project_photo_10, filename: 'hello.png', content_type: 'image/png')
project_10.save!
genre_10 = Genre.find_by(name: "Makeup")
project_genre_10 = ProjectGenre.create(project: project_10, genre: genre_10)

project_photo_11 = URI.open('https://i2.wp.com/darlingafrica.com/kenya/blog/wp-content/uploads/2019/07/Ciara_met_gala.jpg')
project_11 = Project.new(user: user_5, status: 'fundraising', goal_amount: '500', number_of_views: '0', revenue_split: '15%', deadline: DateTime.now + 23, revenue_generated: '0', title: 'Styling my hair into 20 of the newest trends', bio: 'I need to hire a hairstylist to style my hair in 20 different ways; I hope that you will help me finance these videos!', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_11.photo.attach(io: project_photo_11, filename: 'hello.png', content_type: 'image/png')
project_11.save!
genre_11 = Genre.find_by(name: "Makeup")
project_genre_11 = ProjectGenre.create(project: project_11, genre: genre_11)

project_photo_12 = URI.open('https://blog.fr.playstation.com/tachyon/sites/10/2020/11/00-PlayStation-FAQ-featured-image-Cropped.jpg')
project_12 = Project.new(user: user_6, status: 'fundraising', goal_amount: '500', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 23, revenue_generated: '0', title: 'PS5 unboxing', bio: 'I still have not got my hands on a PS5! I think my subscribers will like a video where I unbox it and play a few games; and I hope you enjoy it too!', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_12.photo.attach(io: project_photo_12, filename: 'hello.png', content_type: 'image/png')
project_12.save!
genre_12 = Genre.find_by(name: "Gaming")
project_genre_12 = ProjectGenre.create(project: project_12, genre: genre_12)

project_photo_13 = URI.open('https://images-na.ssl-images-amazon.com/images/I/41cm%2BeTdOKL._AC_SX425_.jpg')
project_13 = Project.new(user: user_6, status: 'fundraising', goal_amount: '500', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 23, revenue_generated: '0', title: 'Can you use an XBOX controller as a buttplug?', bio: 'I heard about this website, buttplug.io and I thought it would be funny to create a crossover', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_13.photo.attach(io: project_photo_13, filename: 'hello.png', content_type: 'image/png')
project_13.save!
genre_13 = Genre.find_by(name: "Tech")
project_genre_13 = ProjectGenre.create(project: project_13, genre: genre_13)

project_photo_14 = URI.open('https://images.unsplash.com/photo-1513738781020-f0109e72554f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
project_14 = Project.new(user: user_7, status: 'fundraising', goal_amount: '100', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 8, revenue_generated: '0', title: 'Just drawing dogs', bio: 'My gaming channel has been about mixing cats and games. Now it is time to move onto the next frontier; dogs!', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_14.photo.attach(io: project_photo_14, filename: 'hello.png', content_type: 'image/png')
project_14.save!
genre_14 = Genre.find_by(name: "Gaming")
project_genre_14 = ProjectGenre.create(project: project_14, genre: genre_14)


project_photo_15 = URI.open('https://s3.amazonaws.com/media.skillcrush.com/skillcrush/wp-content/uploads/2018/05/Blog_feminist-podcast.jpg.webp')
project_15 = Project.new(user: user_8, status: 'fundraising', goal_amount: '1500', number_of_views: '0', revenue_split: '40%', deadline: DateTime.now + 18, revenue_generated: '0', title: 'A feminist tech podcast', bio: 'Looking to create a feminist tech podcast! I need the fundraising in order to set up an audio studio for this project.', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_15.photo.attach(io: project_photo_15, filename: 'hello.png', content_type: 'image/png')
project_15.save!
genre_15 = Genre.find_by(name: "Tech")
project_genre_15 = ProjectGenre.create(project: project_15, genre: genre_15)

project_photo_16 = URI.open('https://dwj199mwkel52.cloudfront.net/assets/core/banners/home-bg-11396371bfee6ea0382d71223cd73460a5247fce33035af60939c9ff4f006f71.jpg')
project_16 = Project.new(user: user_8, status: 'fundraising', goal_amount: '6800', number_of_views: '0', revenue_split: '40%', deadline: DateTime.now + 18, revenue_generated: '0', title: 'Coding in a no code world', bio: 'Should we learn coding when we do not actually need to? I will go to le Wagon to learn (just to make sure) .', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_16.photo.attach(io: project_photo_16, filename: 'hello.png', content_type: 'image/png')
project_16.save!
genre_16 = Genre.find_by(name: "Tutorials")
project_genre_16 = ProjectGenre.create(project: project_16, genre: genre_16)

project_photo_17 = URI.open('https://www.mondedesgrandesecoles.fr/wp-content/uploads/capture-911.jpg')
project_17 = Project.new(user: user_9, status: 'fundraising', goal_amount: '5000', number_of_views: '0', revenue_split: '10%', deadline: DateTime.now + 38, revenue_generated: '0', title: 'Is Le Wagon worth it?', bio: 'I want to go to Le Wagon and then create a video about my experiences. It seems like many people are looking for this type of video.', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_17.photo.attach(io: project_photo_17, filename: 'hello.png', content_type: 'image/png')
project_17.save!
genre_17 = Genre.find_by(name: "Tutorials")
project_genre_17 = ProjectGenre.create(project: project_17, genre: genre_17)

project_photo_18 = URI.open('https://www.leparisien.fr/resizer/PlS6JY8_dfx8HMnQ7fXU1o37saA=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/MCUZPBWQVD7YVF5UNHTIVAKO5Q.jpg')
project_18 = Project.new(user: user_10, status: 'fundraising', goal_amount: '2000', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 28, revenue_generated: '0', title: 'A conversation with Naomi Osaka', bio: 'What can a tennis giant teach us about navigating the world of coding and tech? I am sure all of my followers and new fans would love to see this video', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_18.photo.attach(io: project_photo_18, filename: 'hello.png', content_type: 'image/png')
project_18.save!
genre_18 = Genre.find_by(name: "Tutorials")
project_genre_18 = ProjectGenre.create(project: project_18, genre: genre_18)

project_photo_19 = URI.open('https://media.timeout.com/images/102747490/1372/772/image.jpg')
project_19 = Project.new(user: user_10, status: 'fundraising', goal_amount: '2000', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 28, revenue_generated: '0', title: 'Can fast food be eaten every day?', bio: 'We all love packet ramen in Silicon Valley. What happens if we eat this every day? I want to create a video about this. ', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_19.photo.attach(io: project_photo_19, filename: 'hello.png', content_type: 'image/png')
project_19.save!
genre_19 = Genre.find_by(name: "Tutorials")
project_genre_19 = ProjectGenre.create(project: project_19, genre: genre_19)

project_photo_20 = URI.open('https://images.unsplash.com/photo-1502744688674-c619d1586c9e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80')
project_20 = Project.new(user: user_11, status: 'fundraising', goal_amount: '150', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 23, revenue_generated: '0', title: 'Trying the fastest motorbike in the world', bio: 'I want to buy the fastest motorbike in the world! My fans will love this and I hope to get some more fans doing this type of content. ', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_20.photo.attach(io: project_photo_20, filename: 'hello.png', content_type: 'image/png')
project_20.save!
genre_20 = Genre.find_by(name: "Tech")
project_genre_20 = ProjectGenre.create(project: project_20, genre: genre_20)

project_photo_21 = URI.open('https://images.unsplash.com/photo-1589830640509-17507c2b6cd0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3289&q=80')
project_21 = Project.new(user: user_12, status: 'fundraising', goal_amount: '150', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 76, revenue_generated: '0', title: '100 paper airplane styles', bio: 'I want to create 100 airplanes! Hopefully you can invest in this project ', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_21.photo.attach(io: project_photo_21, filename: 'hello.png', content_type: 'image/png')
project_21.save!
genre_21 = Genre.find_by(name: "Tutorials")
project_genre_21 = ProjectGenre.create(project: project_21, genre: genre_21)

project_photo_22 = URI.open('https://images.unsplash.com/photo-1531243501393-a8996d8f527b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80')
project_22 = Project.new(user: user_12, status: 'fundraising', goal_amount: '150', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 76, revenue_generated: '0', title: 'Do Coders make the best lovers?', bio: 'I want to interview 100 coders on their sex lives ', creator_thankyou: 'Thank you so much for investing in me and believing in me! It really means a lot.')
project_22.photo.attach(io: project_photo_22, filename: 'hello.png', content_type: 'image/png')
project_22.save!
genre_22 = Genre.find_by(name: "Comedy")
project_genre_22 = ProjectGenre.create(project: project_22, genre: genre_22)

project_photo_23 = URI.open('https://images.unsplash.com/photo-1565802900597-6e85ec534f8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
project_23 = Project.new(user: user_16, status: 'fundraising', goal_amount: '350', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 76, revenue_generated: '0', title: 'Caviar and KFC', bio: 'What goes best with expensive shit? KFC. Please help me make the ultimate Caviar Chicken Burger')
project_23.photo.attach(io: project_photo_23, filename: 'hello.png', content_type: 'image/png')
project_23.save!
genre_23 = Genre.find_by(name: "Comedy")
project_genre_23 = ProjectGenre.create(project: project_23, genre: genre_23)


project_photo_25 = URI.open('https://images.unsplash.com/photo-1565879629766-30adf38aac56?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
project_25 = Project.new(user: user_14, status: 'fundraising', goal_amount: '350', number_of_views: '0', revenue_split: '30%', deadline: DateTime.now + 76, revenue_generated: '0', title: 'Piano and Keyboard recital', bio: 'I want to film a music video where I show off my keyboard skills in Hip Hop music.')
project_25.photo.attach(io: project_photo_25, filename: 'hello.png', content_type: 'image/png')
project_25.save!
genre_25 = Genre.find_by(name: "Tutorials")
project_genre_25 = ProjectGenre.create(project: project_25, genre: genre_25)




p "Projects created"

p "Creating investments"


investor_1 = User.new(last_name: 'Nathan', first_name: 'Cheran', email: 'cheran.nathan@gmail.com', password: '123456', bio: 'I love investing in comedy creators.', role: 'investor', pseudo: 'Cheran')

investor_2 = User.new(last_name: 'Gonzague', first_name: 'Louis', email: 'louis.gonzague@gmail.com', password: '123456', bio: 'I love investing in everything', role: 'investor', pseudo: 'Lgadam')

Investment.create!(project: project_2, user: investor_2, price_cents: 2000, status: 'done', user_thankyou: 'you are the best and I wish you well', sku: 'coucou')

investor_3 = User.new(last_name: 'TheTA', first_name: 'Fred', email: 'fred@gmail.com', password: '123456', bio: 'I love investing in most things', role: 'investor', pseudo: 'Fred')

Investment.create!(project: project_2, user: investor_3, price_cents: 100, status: 'done', user_thankyou: 'you are the best and I wish you well', sku: 'popo')

investor_4 = User.new(last_name: 'Bruno', first_name: 'Seb', email: 'seb@gmail.com', password: '123456', bio: 'I love investing in videos', role: 'investor', pseudo: 'Seb')

Investment.create!(project: project_3, user: investor_3, price_cents: 100000, status: 'done', user_thankyou: 'you are the best and I wish you well',  sku: 'papa')

Investment.create!(project: project_6, user: investor_3, price_cents: 100, status: 'done', user_thankyou: 'you are the best and I wish you well',   sku: 'papa')





