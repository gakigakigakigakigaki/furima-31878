class OrdersController < ApplicationController
  def index
    @item_order = ItemOrder.new
    @item = Item.find(params[:item_id])
  end

  

  def create
    @item = Item.find(params[:item_id])
    @item_order = ItemOrder.new(order_params)
    if @item_order.valid?
      pay_item
      @item_order.save
      redirect_to root_path
    
    else
      render action: :index
      
    end
  end



  private

  def order_params
    params.require(:item_order).permit(:postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  end
  
  def pay_item
    Payjp.api_key = "sk_test_37c3b0441ff209ff5e05e8a6"
      Payjp::Charge.create(
        amount: @item.price,
        card: order_params[:token],
        currency: 'jpy'
      )
  end

end



