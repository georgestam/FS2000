require 'faker'

User.destroy_all
Article.destroy_all
Story.destroy_all

admin = User.new({

    email: "fs2000@fs2000.com",
    password: "password10",
    name: "John",
    admin: true
    })

admin.save!

image = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
articles = []
5.times do
  title = Faker::ChuckNorris.fact
  articles << Article.create!({
    title: title,
    description: Faker::Lorem.paragraph(50),
    locale: "en"
    })
end

article = Article.first
article.photo = image
article.save!

stories = []
5.times do
  title = Faker::ChuckNorris.fact
  stories << Story.create!({
    title: title,
    description: Faker::Lorem.paragraph(50),
    locale: "en"
    })
end

story = Story.first
story.photo = image
story.save!
