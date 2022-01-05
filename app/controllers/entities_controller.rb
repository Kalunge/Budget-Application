class EntitiesController < ApplicationController
  def index
  end

  def new
    @entity = current_user.entities.new
  end

  def create
    @entity = current_user.entities.new(entity_params)

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
