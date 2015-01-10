# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name "MyString"
    description "MyText"
    image "MyString"
    status ""
    category nil
  end
end
