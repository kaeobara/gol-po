class RecruitsController < ApplicationController
  before_action :find_item_params, only: [:index]
  

  def index
  end

  # def new
  #   @recruit = PurchaseAddress.new
  #   if current_user.id == @item.user_id
  #     return redirect_to root_path
  #   end
  #    if @golf.recruit.present?
  #      return redirect_to root_path
  #    end
  #  end

  # def create
  #   @purchase = PurchaseAddress.new(purchase_params)
  #   if @purchase.valid?
  #     pay_item
  #     @purchase.save
  #     return redirect_to root_path
  #   else
  #     render :new
  #   end

  # end

  private

  def find_item_params
    @golf = Golf.find(params[:golf_id])
  end

  # def purchase_params
  #   params.require(:purchase_address).permit(:postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  # end

end
