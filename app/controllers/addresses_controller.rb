class AddressesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @address = Address.new
  end

  def create
    Address.create(address_params)
    redirect_to root_path
  end

  def show
    @address = Address.find(params[:id])
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    address = Address.find(params[:id])
    address.update(address_params)
    redirect_to root_path
  end

  private
  def address_params
    params.require(:address).permit(:postcode, :prefecture, :city, :block, :building, :phone_number).merge(user_id: current_user.id)
  end
end
