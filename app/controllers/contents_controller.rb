class ContentsController < ApplicationController
  before_action :authenticate_student!


  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

end
