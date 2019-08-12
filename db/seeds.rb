# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
response = RestClient.get("https://api.data.charitynavigator.org/v2/Organizations?categoryID=6&app_id=#{ENV["APP_KEY"]}&app_key=#{ENV["CHARITY_KEY"]}")
  data = JSON.parse(response)
    data.each do |charity|
      Charity.create!(name: charity["charityName"], url: charity["websiteURL"], rating: charity["currentRating"]["rating"], rating_image: charity["currentRating"]["ratingImage"]["large"], financial_rating: charity["currentRating"]["financialRating"]["rating"], accountability_rating: charity["currentRating"]["accountabilityRating"]["rating"], category: charity["category"]["categoryName"], deductibility: charity["irsClassification"]["deductibility"], state:  charity["mailingAddress"]["stateOrProvince"])
    end
