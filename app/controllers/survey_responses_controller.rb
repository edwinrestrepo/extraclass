class SurveyResponsesController < ApplicationController
  before_action :authenticate_student!
  before_action :set_survey

  def create
    answers = params[:survey_responses][:questions_answers]
    answers.each do |question, answer|
      SurveyResponse.create(survey_id: @survey.id, question_id: question, answer_id: answer, student_id: current_student.id, timestamp: Time.now.to_i)
    end
    #NotificationsMailer.new_survey_response_email(@survey).deliver
    render :survey_results
  end

  private

    def set_survey
      @content = Content.find(params[:content_id])
      @survey = @content.survey
    end

    def survey_response_params
      params.require(:survey_responses).permit(:questions_answers)
    end

end