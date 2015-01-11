# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :question do
    description { Faker::Lorem.sentences(1) }
    association :survey
  end
end

