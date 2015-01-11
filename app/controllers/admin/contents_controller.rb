class Admin::ContentsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  layout "layout_admins"

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
    if @content.save
      redirect_to admin_contents_path, notice: 'Content was successfully created.'
    else
      render :new
    end
  end

  def update
    if @content.update(content_params)
      redirect_to admin_contents_path, notice: 'Content was successfully updated.' 
    else
      render :edit
    end
  end

  def destroy
    if @content.destroy
      redirect_to admin_contents_path, notice: 'Content was successfully destroyed.'
    else
      render :index
    end
  end

  private
    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:title, :content, :status, :course_id)
    end
end
