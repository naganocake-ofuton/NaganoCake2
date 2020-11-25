class Admin::OrderItemsController < ApplicationController
  before_action :authenticate_admin!

  def update
  		@order_item = OrderItem.find(params[:id])
  		@order_item.update(order_item_params)
  		@order = @order_item.order
      @order_items = @order.order_items

      if @order_items.pluck(:making_status).all?{|making_status| making_status == '製作完了'}
			   @order.update(status: '発送準備中')
		  else
		    @order_items.where(making_status: '製作中').any?
			  @order.update(status: '製作中')
      end

      if @order_item.update(order_item_params)
		  	flash[:success] = "制作ステータスを変更しました"
		    redirect_to admin_order_path(@order_item.order)
		  else
		    render "show"
		  end
  end

  private
  def order_item_params
		  params.require(:order_item).permit(:making_status, :order_id)
	end
end


