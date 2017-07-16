FactoryGirl.define do
  factory :user do
    username('test')
    email('test@test.com')
    password('testing')
    admin true
  end

  factory :product do
    name('Space Place')
    image('https://i.ytimg.com/vi/lt0WQ8JzLz4/maxresdefault.jpg')
    cost 55
    description('it is very cool')
    star('Vega')
    agency('Belarus Space Agency')
    craft('Shenzhou spacecraft')
    distance('')
  end

  factory :review do
    author('test')
    content('great')
    rating 5
  end
end
