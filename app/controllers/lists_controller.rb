class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = current_user.lists.all
  end

  def create
    @list = current_user.lists.create(list_params)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :description)
  end
end
