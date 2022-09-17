class EntitiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @group_by_user = current_user.groups.find(params[:group_id])
    @entities = @group_by_user.entities
  end

  def new
    @group = current_user.groups.find(params[:group_id])
    @entity = @group.entities.new
  end

  def create # rubocop:todo Metrics/AbcSize, Metrics/MethodLength
    @group = current_user.groups.find(params[:group_id])
    @entity = current_user.entities.create(entity_params)
    if @entity.save
      @group_entity = @entity.entity_group.create(group_id: @group.id, entity_id: @entity.id)
      if @group_entity.save
        flash[:notice] = 'Transaction created successfully'
        redirect_to group_entities_path(@group)
      else
        flash.now[:alert] = 'Category creation failed'
        render action: 'new'
      end
    else
      flash.now[:alert] = 'Transaction creation failed, try again'
      render action: 'new'
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
