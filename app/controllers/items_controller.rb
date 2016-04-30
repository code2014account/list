class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
      @item = Item.find(params[:id])
  end

  def create

    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user

    if name.save
    flash[:notice] = "Comment saved successfully."
# #12
    redirect_to [@item.name, @item]
  else
    flash[:alert] = "Comment failed to save."
# #13
    redirect_to [@item.name, @item]
  end
end

  def edit
  end
end
