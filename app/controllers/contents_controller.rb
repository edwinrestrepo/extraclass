class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]


  def index
    @contents = Content.all
  end

  def show
  end

  def new
    @content = Content.new
  end

  def edit
  end

  def create
    @content = Content.new(content_params)
    @content.save
  end

  def update
    @content.update(content_params)
  end

  def destroy
    @content.destroy
  end

  private
    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:title, :content, :status)
    end
end
