class SurveyResponse < ActiveRecord::Base
  belongs_to :survey
  belongs_to :question
  belongs_to :answer
  belongs_to :student
end
