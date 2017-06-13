FactoryGirl.define do
  factory :station do

    phone { Faker::PhoneNumber.phone_number }
    info { Faker::Lorem.sentence }
    address { 
              [Faker::Address.building_number,
              Faker::Address.street_name,
              Faker::Address.street_address,
              Faker::Address.city,
              Faker::Address.zip_code].join(" ")
            }

    trait :valid do
      title { Faker::Lorem.word }
    end

    trait :invalid do
      title { nil }
    end

    trait :valid_update do
      title { "title update" }
    end

  end
end