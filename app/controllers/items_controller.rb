class ItemsController < ApplicationController

  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
  end

  def create
  end
  def new
    
  end
  def show
  end

  def edit
  end
end

