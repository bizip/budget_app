# frozen_string_literal: true

class GroupsController < ApplicationController # rubocop:todo Style/Documentation
  def index
    @group = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(category_params)
    @group.author = current_user
    if @group.save
      redirect_to groups_path, notice: "#{@group.name} successfully created." if @group.save
      flash[:notice] = 'Inventory created successfully!'
    else
      flash.now[:alert] = 'Something unexpected happened, inventory could not be created.'
      render :new
    end
  end

  # private

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
