
class CategoriesController < ApplicationController
  def index; end

  def new
    @category = Group.new
  end

  def create
    @category = Group.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "#{@category.name} successfully created."
    end
  end

  private
  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
