# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :survey do
    title { Faker::Lorem.sentences(1) }
    description { Faker::Lorem.paragraph(1) }
    status 1
    association :content
  end
end
