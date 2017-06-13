FactoryGirl.define do
  factory :time_table do

    arrival_time { Faker::Time.forward(1, :morning) }
    departure_time { Faker::Time.forward(1, :evening) }

    trait :valid do
      station_id { create(:station, :valid).id }
      train_id { create(:train, :valid).id }
    end
 
    trait :invalid do
      station_id {  nil }
      train_id { nil }
    end

    trait :valid_update do
      arrival_time { Faker::Time.forward(1, :midnight) }
      departure_time { Faker::Time.forward(1, :midnight)}
    end

  end
end