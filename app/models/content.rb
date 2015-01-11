class Content < ActiveRecord::Base
	enum status: [ :draft, :publish ]
	#has_many :courses_contents
	#has_many :courses, through: :courses_contents
	belongs_to :course
  has_one :survey

  validates :title, presence: true, uniqueness: true, length: { minimum: 10 }
  validates :content, presence: true, length: { minimum: 30 }
end
