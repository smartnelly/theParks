class OrdersController < ApplicationController
 def index 
    @orders = Order.all
 end
    
    
    
    def new
    @order = Order.new

  end

   
  
  def create
    item = Item.find params[:item_id]
    
    @current_order.items << item

    redirect_to orders_path
  end




  def destroy
    item = Item.find params[:id]
    item.destroy

    redirect_to orders_path
  end



end