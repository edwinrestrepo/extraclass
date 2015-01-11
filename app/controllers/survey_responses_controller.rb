class SurveyResponsesController < ApplicationController
  before_action :authenticate_student!
  before_action :set_survey
  #before_action :check_ownership, only: :index
  #before_action :protect_from_owner, only: :create

  def index
    @survey_responses = SurveyResponse.get_questions(@survey)
    @survey_responders = SurveyResponse.get_responders(@survey)
    @responses_number = SurveyResponse.responses_number(@survey)
  end

  def create
    answers = params[:survey_responses][:questions_answers]
    answers.each do |question, answer|
      SurveyResponse.create(survey_id: @survey.id, question_id: question, answer_id: answer, student_id: current_student.id, timestamp: Time.now.to_i)
    end
    #NotificationsMailer.new_survey_response_email(@survey).deliver

    #@grade = SurveyResponse.get_grade(@survey.id, current_student.id)
    #render :thanks
  end

  def thanks
  end

  private

    def set_survey
      @content = Content.find(params[:content_id])
      @survey = @content.survey
    end

    def survey_response_params
      params.require(:survey_responses).permit(:questions_answers)
    end

    def protect_from_owner
      redirect_to surveys_url, notice: "You're not allowed to send responses to this survey" if current_user.author?(@survey)
    end

    def check_ownership
      redirect_to surveys_url, notice: "You're not allowed to see the responses of this survey" unless current_user.author?(@survey)
    end
end