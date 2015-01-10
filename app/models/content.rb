class Content < ActiveRecord::Base
	has_many :courses_contents
	has_many :courses, through: :courses_contents
end
