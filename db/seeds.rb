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

# CSV.foreach('db/contents.csv', headers: true) do |row|
#   Content.create(
#     title: row['title'],
#     prefecture_id: row['prefecture_id'],
#     route_url: row['route_url'],
#     distance: row['distance'],
#     max_elevation: row['max_elevation'],
#     total_elevation: row['total_elevation']
#   )
# end

Content.create([
  {title: '琵琶湖', prefecture_id: 25, route_url: 'a', distance: 140, max_elevation: 20, total_elevation:30, image:File.open("./public/images/琵琶湖.png")},
  {title: '淡路島', prefecture_id: 28, route_url: 'a', distance: 150, max_elevation: 20, total_elevation:30, image:File.open("./public/images/淡路島.png")},
  {title: 'しまなみ海道', prefecture_id: 34, route_url: 'a', distance: 130, max_elevation: 20, total_elevation:30, image:File.open("./public/images/しまなみ街道.png")},
  {title: '諏訪湖', prefecture_id: 20, route_url: 'a', distance: 20, max_elevation: 20, total_elevation:30, image:File.open("./public/images/諏訪湖.png")},
  {title: '霞ヶ浦', prefecture_id: 8, route_url: 'a', distance: 120, max_elevation: 20, total_elevation:30, image:File.open("./public/images/霞ヶ浦.png")}
])