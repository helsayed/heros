FactoryGirl.define do
  factory :hero do
    name { Faker::Lorem.word }
    real_name { Faker::Lorem.word }
    health { Faker::Number.number(3) }
    armour { Faker::Number.number(3) }
    shield { Faker::Number.number(3) }
  end
end
