# frozen_string_literal: true

class EntitiesController < ApplicationController
  def index
    @entity = Entity.all
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.author = current_user
    if @entity.save
      redirect_to entities_path, notice: "#{@entity.name} successfully created." if @entity.save
      flash[:notice] = 'Transaction created successfully!'
    else
      render :new
      flash.now[:alert] = 'Something unexpected happened, Transaction could not be created!'
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
