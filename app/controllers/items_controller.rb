class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :destroy]

  def index
    @item = Item.new
    @items = Item.all
  end

  def create
    @item = Item.create(item_params)
    flash.now[:notice] = "Item was successfully updated."
  end

  def update
    @item.update(item_params)
    flash.now[:notice] = "Item was successfully updated."
  end

  def destroy
    @item.delete
    flash.now[:notice] = "Item was successfully updated."
  end

  private

  def item_params
    params.require(:item).permit(:name, :picture, :remove_picture)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
