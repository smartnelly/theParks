class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find params[:id]
    # @items = Item.all(:name)
    #bug
redirect_to items_path

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    @category.save

    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
