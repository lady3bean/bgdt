class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new    
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to :action=>'index', :controller=>'home_pages'
    else
      redirect_to :action=>'index', :controller=>'home_pages'
    end
  end
   private
    def category_params
      params.require(:category).permit(:cat)
    end
end