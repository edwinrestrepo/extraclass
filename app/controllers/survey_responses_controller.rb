class SurveyResponsesController < ApplicationController
  before_action :set_survey_response, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @survey_responses = SurveyResponse.all
    respond_with(@survey_responses)
  end

  def show
    respond_with(@survey_response)
  end

  def new
    @survey_response = SurveyResponse.new
    respond_with(@survey_response)
  end

  def edit
  end

  def create
    @survey_response = SurveyResponse.new(survey_response_params)
    @survey_response.save
    respond_with(@survey_response)
  end

  def update
    @survey_response.update(survey_response_params)
    respond_with(@survey_response)
  end

  def destroy
    @survey_response.destroy
    respond_with(@survey_response)
  end

  private
    def set_survey_response
      @survey_response = SurveyResponse.find(params[:id])
    end

    def survey_response_params
      params.require(:survey_response).permit(:survey_id, :question_id, :answer_id, :timestamp, :student_id)
    end
end
