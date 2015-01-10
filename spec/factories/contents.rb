# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content do
    title "MyString"
    content "MyText"
    status 1
  end
end
