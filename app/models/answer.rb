class Answer < ActiveRecord::Base
  belongs_to :question

  belongs_to :question
  has_many :survey_responses, dependent: :destroy

end
