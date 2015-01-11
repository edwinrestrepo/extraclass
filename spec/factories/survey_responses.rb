# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey_response do
    survey nil
    question nil
    answer nil
    timestamp 1
    student nil
  end
end
