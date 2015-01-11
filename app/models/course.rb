class Course < ActiveRecord::Base
	enum status: [ :draft, :publish ]
  belongs_to :category
  #has_many :courses_contents
  #has_many :contents, through: :courses_contents
  has_many :contents

  validates :name, presence: true, uniqueness: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 30 }
end
