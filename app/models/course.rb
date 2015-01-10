class Course < ActiveRecord::Base
  belongs_to :category
  has_many :courses_contents
  has_many :contents, through: :courses_contents  
end
