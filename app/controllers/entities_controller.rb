class EntitiesController < ApplicationController
  def index
    @group = current_user.groups.find_by(id: params[:group_id])
  end

  def new
    @entity = current_user.groups.find_by(id: params[:group_id]).entities.new
  end

  def create
    @group = current_user.groups.find_by(id: params[:group_id])
    @entity = @group.entities.create(name: entity_params[:name], amount: entity_params[:amount], user: current_user)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to root_path, notice: 'entity was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
