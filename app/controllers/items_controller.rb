class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = current_user.items.all
  end

  def create
    @item = Item.create!(item_params)
    @item.list_id = params[:list_id]

    @item.save

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
    params.require(:item).permit(:title, :description, :state, :list_id)
  end
end
