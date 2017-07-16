FactoryGirl.define do
  factory :user do
    email('test@test.com')
    password('testing')
    admin true
    id 1
  end

  factory :product do
    id 1
    name('Space Place')
    image('https://i.ytimg.com/vi/lt0WQ8JzLz4/maxresdefault.jpg')
    cost 55
    description('it is very cool')
    star('Vega')
    agency('Belarus Space Agency')
    craft('Shenzhou spacecraft')
    distance('very far')
  end
end
