class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to root_path
      else
       render :new 
     end
  end

  def show
    
  end

  def edit
    if @item.purchase_record.present?
      redirect_to action: :index
    end
  end

  def update
    
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
    
  end  

private
def move_to_index
  if @item.user_id != current_user.id
    redirect_to action: :index
  end
end

def set_item
  @item = Item.find(params[:id])
end

  def item_params
    params.require(:item).permit(:product_name, :price, :category_id, :status_id, :description, :prefecture_id, :days_to_ship_id, :delivery_fee_id,:image).merge( user_id: current_user.id)
  end

end
