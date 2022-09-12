# frozen_string_literal: true

class CategoriesController < ApplicationController # rubocop:todo Style/Documentation
  def index; end

  def new
    @category = Group.new
  end

  def create
    @category = Group.new(category_params)
    redirect_to categories_path, notice: "#{@category.name} successfully created." if @category.save
  end

  private

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
