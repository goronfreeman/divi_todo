class ItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    else
      # Do stuff
    end
  end

  def update
    @list = List.find(:params[:challenge_id])
    @task = Task.find(params[:id])
    @task.update_attributes(item_params)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :state)
  end
end
