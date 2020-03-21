class ItemsController < ApplicationController
  before_action :item_params
  
  def index
    @items = Item.order('created_at DESC').limit(3)
  end

  private

  def item_params
    @item = Item.find(params[:item_id])
  end

  def show
  end

  def edit
  end
end
