class CoursesContent < ActiveRecord::Base
  belongs_to :course
  belongs_to :content
end
