class ItemsController < ApplicationController
  def index
    @items = Item.includes(:user).where(order('created_at DESC').limit(3)
  end
  def new
    
  end
  def show
  end

  def edit
  end
end

