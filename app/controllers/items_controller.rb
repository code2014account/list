class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to current_user, notice: "Your item was saved"
    else
      flash[:error] = "Error creating item. Please try again."
      render "users/show"
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" was deleted succesfully."
    else
      flash[:error] = "There was an error deleting the task."
    end
    redirect_to current_user
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end