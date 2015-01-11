# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :answer do
    description { Faker::Lorem.sentences(1) }
    association :question
  end
end
