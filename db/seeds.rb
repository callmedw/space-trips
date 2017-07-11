Product.destroy_all
Review.destroy_all
User.destroy_all


  User.create!(
    email: Faker::Internet.safe_email,
    password: "password",
    password_confirmation: "password",
    id: 1
  )
  User.create!(
    email: Faker::Internet.safe_email,
    password: "password",
    password_confirmation: "password",
    id: 2
  )
  User.create!(
    email: Faker::Internet.safe_email,
    password: "password",
    password_confirmation: "password",
    id: 3
  )
  User.create!(
    email: Faker::Internet.safe_email,
    password: "password",
    password_confirmation: "password",
    id: 4
  )
  User.create!(
    email: Faker::Internet.safe_email,
    password: "password",
    password_confirmation: "password",
    id: 5
  )

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
                            content: Faker::TwinPeaks.quote,
                            user_id: Faker::Number.between(1, 5))
  end
end

User.create!(
  email: "admin@admin.com",
  password: "administrator",
  password_confirmation: "administrator",
  admin: true,
)

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
p "Created #{User.count} users"
