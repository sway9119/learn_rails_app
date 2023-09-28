# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do |index|
  Article.create!(
    title: "タイトル#{index}",
    content: "本文#{index}",
    category: "カテゴリー#{index}",
    published: "2023-09-16",
    access: index,
    comments_count: index,
    closed: false
  )
end

20.times do |index|
  Comment.create!(
    articles_id: index + 1, # Articleのindexの開始が1なので1から開始する
    title: "タイトル#{index}",
    body: "本文#{index}"  
  )
end
