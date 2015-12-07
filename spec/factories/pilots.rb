FactoryGirl.define do
  factory :pilot do
    association :location
    name { Faker::Name.last_name }
    rank { ['2Lt', '1Lt', 'Capt', 'Maj', 'Lt Col'].sample }
    hours { Faker::Number.between(1, 10) }
    qualification { ['Wingman', 'Flight Lead', 'Instructor', 'Evaluator'].sample }
    commision_date { Faker::Date.backward(3000) }
    adsc { Faker::Date.forward(1000) }
    avatar_url { Faker::Avatar.image }

    factory :invalid_pilot do
      name nil
    end
  end
end
