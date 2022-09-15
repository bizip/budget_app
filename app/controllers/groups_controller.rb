# frozen_string_literal: true

class GroupsController < ApplicationController # rubocop:todo Style/Documentation
  before_action :authenticate_user!, except: :index
  def index
    if user_signed_in?
      @group = current_user.groups
    else
      render 'users/slash'
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = current_user.groups.new
  end

  def create
    @user = current_user
    @group = @user.groups.create(category_params)
    if @group.save
      flash[:notice] = 'Category created successfully'
      redirect_to groups_path
    else
      flash.now[:alert] = 'Failed try again'
      render action: 'new'
    end
  end

  private

  def category_params
    author_id = current_user.id
    params.require(:group).permit(:name, :icon)
  end
end
