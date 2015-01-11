# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content_progress do
    student nil
    content nil
    grade 1.5
    course nil
  end
end
