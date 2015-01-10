class Course < ActiveRecord::Base
	enum status: [ :draft, :publish ]
  belongs_to :category
  #has_many :courses_contents
  #has_many :contents, through: :courses_contents 
  has_many :contents 
end
