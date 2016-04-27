class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
      @item = Item.find(params[:id])
  end


  def create

  @item = Item.new
  @item.title = params[:item][:title]
  @item.body = params[:item][:body]


  if @item.save

    flash[:notice] = "Item was saved successfully."
    redirect_to @item
  else

    flash.now[:alert] = "There was an error saving the Item. Please try again."
    render :new
  end
end

  def edit
  end
end
