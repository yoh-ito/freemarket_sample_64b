class ItemsController < ApplicationController
  def index
    @items = Item.all
   
  end

  private

  def item_params
    params.require(:item).permit(:name,:price, images_attributes: {image_ids: []})
  end
end
