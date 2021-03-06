# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/prefectures.csv', headers: true) do |row|
  Prefecture.create(
    name: row['name']
  )
end

Post.create([
  {title: '琵琶湖', prefecture_id: 25, route_url: 'a', distance: 140, max_elevation: 20, total_elevation:30, route_image:File.open("./public/images/琵琶湖.png"), landscape_image:File.open("./public/images/風景1.jpg")},
  {title: '淡路島', prefecture_id: 28, route_url: 'a', distance: 150, max_elevation: 20, total_elevation:30, route_image:File.open("./public/images/淡路島.png"), landscape_image:File.open("./public/images/風景2.jpg")},
  {title: 'しまなみ海道', prefecture_id: 34, route_url: 'a', distance: 130, max_elevation: 20, total_elevation:30, route_image:File.open("./public/images/しまなみ街道.png"), landscape_image:File.open("./public/images/風景3.jpg")},
  {title: '諏訪湖', prefecture_id: 20, route_url: 'a', distance: 20, max_elevation: 20, total_elevation:30, route_image:File.open("./public/images/諏訪湖.png"), landscape_image:File.open("./public/images/風景4.jpg")},
  {title: '霞ヶ浦', prefecture_id: 8, route_url: 'a', distance: 120, max_elevation: 20, total_elevation:30, route_image:File.open("./public/images/霞ヶ浦.png"), landscape_image:File.open("./public/images/風景5.jpg")}
])

User.create([
  {nickname: 'a', email: 'a@a', password:'1111111'}
])