FactoryGirl.define do
  factory :location do
    base { Faker::Company.name }
    unit { Faker::Team.creature }
    country { Faker::Address.country }
    state { Faker::Address.state }
    oconus { [true, false].sample }
    pascode { Faker::Lorem.characters(8) }
    billets { Faker::Number.number(2) }
    emblem_url { Faker::Company.logo }
  end
end
