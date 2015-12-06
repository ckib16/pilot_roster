FactoryGirl.define do
  factory :pilot do
    location { Faker::Address.city }
    name { Faker::Name.last_name }
    rank { Faker::Name.rank }
    hours { Faker::Number.between(1, 10) }
    qualification { Faker::Name.qualification }
    commision_date { Faker::Date.backward(3000) }
    adsc { Faker::Date.forward(1000) }
    avatar_url { Faker::Avatar.image }
  end
end
