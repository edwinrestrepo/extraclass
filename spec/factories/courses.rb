# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :course do
    name { Faker::Lorem.sentences(1) }
    description { Faker::Lorem.paragraph(1) }
    image "something.jpg"
    status 1
    association :category
  end
end
