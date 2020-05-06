class UsersController < ApplicationController
  before_action :set_category_pull

  def new
    @user = current_user
  end

  def show
    user = User.find(params[:id])
    @email = user.email
    @items = user.items
    @user = current_user
  end


  private

  def set_category_pull
    @parents = Category.where(ancestry: nil).order("id ASC").limit(13)
  end
end