class ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
  end

  def create
    @item = Item.create(item_params)
    flash.now[:notice] = "Item was successfully updated."
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    flash.now[:notice] = "Item was successfully updated."
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    flash.now[:notice] = "Item was successfully updated."
  end

  private

  def item_params
    params.require(:item).permit(:name, :picture, :remove_picture)
  end
end
