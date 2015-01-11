class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  def update
    @category.update(category_params)
  end

  def destroy
    @category.destroy
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
