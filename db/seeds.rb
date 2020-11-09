# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require_relative '../config/environment'
require 'json'

Activity.destroy_all
User.destroy_all

ba_array = []
key_array = []
200.times do
    ba = RestClient.get('http://www.boredapi.com/api/activity/')
    data = JSON.parse(ba)
    if(key_array.include?(data["key"]) == false)
        ba_array.push(data)
    end
    key_array.push(data["key"])
    
end

ba_array.each do |activity|
    Activity.create(
        name: activity["activity"],
        activity_type: activity["type"],
        participants: activity["participants"],
        price: activity["price"],
        activity_link: activity["link"],
        accessibility: activity["accessibility"]
    )
end

10.times do
    User.create(
        username: Faker::Name.name,  
        email: Faker::Internet.email, 
        password: "1234"
    )
end
