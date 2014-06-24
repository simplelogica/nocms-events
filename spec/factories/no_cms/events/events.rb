# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_events_event, class: NoCms::Events::Event do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    starts_at 7.days.from_now
    ends_at 14.days.from_now
  end
end
