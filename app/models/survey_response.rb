class SurveyResponse < ActiveRecord::Base
  belongs_to :survey
  belongs_to :question
  belongs_to :answer
  belongs_to :student

  scope :get_last_response_from_student, ->(survey_id, student_id) { where("survey_id = ? AND student_id = ?", survey_id, student_id).last }
  scope :get_questions, ->(survey_id) { where("survey_id = ?", survey_id).select(:question_id).distinct }
  scope :get_grade, ->(survey_id, student_id) { get_correct_answers(survey_id, student_id).to_f / get_questions(survey_id).count.to_f }

  def self.get_correct_answers(survey_id, student_id)
    last_response = get_last_response_from_student(survey_id, student_id)
    correct_answers_last_submit = joins(:answer).where("survey_id = ? AND student_id = ? AND answers.correct = ? AND timestamp = ?", survey_id, student_id, true, last_response.timestamp).count
  end

end
