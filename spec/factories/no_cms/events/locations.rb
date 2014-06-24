# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_events_location, class: NoCms::Events::Location do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    lat 43.248852
    lng -5.772265
  end
end
