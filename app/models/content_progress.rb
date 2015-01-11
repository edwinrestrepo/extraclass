class ContentProgress < ActiveRecord::Base
  belongs_to :student
  belongs_to :content
  belongs_to :course
end
