class ContentProgress < ActiveRecord::Base
  belongs_to :student
  belongs_to :content
  belongs_to :course

  validates_presence_of :grade
  validates_numericality_of :grade
end
