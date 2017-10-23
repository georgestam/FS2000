require 'faker'

User.destroy_all
Article.destroy_all
Story.destroy_all
Course.destroy_all

admin = User.new({

    email: "rakan@starfishproject.ae",
    password: "password10",
    name: "rakan",
    admin: true
    })

admin.save!

image = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
youtube = "https://www.youtube.com/watch?v=YoaJW7PPJSM&index=2&list=PLJj-2-ZfLCt8_d1_vyt_g6mWAmKnoVwyt"

articles = []
5.times do
  title = Faker::ChuckNorris.fact
  articles << Article.create!({
    title: title,
    description: Faker::Lorem.paragraph(50),
    locale: "en",
    youtube: youtube
    })
end

article = Article.first
article.locale = "ar"
article.photo = image
article.youtube = youtube
article.save!

stories = []
5.times do
  title = Faker::ChuckNorris.fact
  stories << Story.create!({
    title: title,
    description: Faker::Lorem.paragraph(50),
    locale: "en",
    youtube: youtube
    })
end

story = Story.first
story.locale = "ar"
story.photo = image
story.save!

courses = []
5.times do
  date_start = DateTime.current - rand(1000)
  courses << Course.create!({
    date_start: date_start,
    date_finish: date_start + 4,
    time_start: DateTime.current,
    location: "Dubai",
    locale: "en"
    })
end

course = Course.second
course.locale = "ar"
course.description = Faker::ChuckNorris.fact
course.save!