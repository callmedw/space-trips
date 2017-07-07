Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Space.galaxy,
                            image: Faker::Placeholdit.image ,
                            cost: Faker::Commerce.price,
                            description: Faker::Space.planet,
                            star: Faker::Space.star,
                            agency: Faker::Space.agency,
                            craft: Faker::Space.nasa_space_craft,
                            distance: Faker::Space.distance_measurement)
  5.times do |index|
    product.reviews.create!(author: Faker::Name.unique.name,
                            rating: Faker::Number.between(1, 5),
                            content: Faker::TwinPeaks.quote)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
