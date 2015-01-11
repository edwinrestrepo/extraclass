# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :content do
    title { Faker::Lorem.sentences(1) }
    content { Faker::Lorem.paragraph(4) }
    status 1
  end
end
