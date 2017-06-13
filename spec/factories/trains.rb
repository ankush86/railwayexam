FactoryGirl.define do
  factory :train do

    info { Faker::Lorem.sentence }

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