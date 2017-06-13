FactoryGirl.define do
  factory :beverage_store do

    title { Faker::Lorem.word }
    info { Faker::Lorem.sentence }

    trait :valid do
      station_id { create(:station, :valid).id }
    end
 
    trait :invalid do
      station_id {  nil }
    end

    trait :valid_update do
      title { "title update" }
    end

  end
end