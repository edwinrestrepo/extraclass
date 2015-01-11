class ContentsController < ApplicationController
  before_action :authenticate_student!
  before_action :set_content, only: [:show]
  layout "layout_students"

  def index
    @course = Course.find(params[:course_id])
    @course_contents = @course.contents
  end

  def show
    @survey = Survey.where(content_id: @content.id).first
    @survey_response = SurveyResponse.new(survey_id: @survey.id)
  end

  private
    def set_content
      @course = Course.find(params[:course_id])
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:title, :content, :status)
    end

end
