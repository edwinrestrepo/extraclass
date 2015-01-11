# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content_progress do
    student_id 1
    content_id 2
    grade 1.5
    course_id 3
  end
end
