class Admin::OrdersController < ApplicationController
     before_action :authenticate_admin!

  def index
  		@orders = Order.all.page(params[:page]).per(10)
  end

  def current_index
    @orders = Order.where(customer_id: params[:id]).page(params[:page]).per(10)
    render :index
  end

  def today_order_index
    now = Time.current
    @orders = Order.where(created_at: now.all_day).page(params[:page]).per(10)
    render :index
  end

	def show
		@order = Order.find(params[:id])
		@order_items = @order.order_items
	end

	def update
		@order = Order.find(params[:id])
		if @order.update(order_params)
			if @order.status == "入金確認"
         @order.order_items.each do |order_item|
         order_item.update(making_status: "製作待ち")
       end
      end
		   flash[:success] = "注文ステータスを変更しました"
		   redirect_to admin_order_path(@order)
		else
		   render "show"
		end
	end

	private
	def order_params
		  params.require(:order).permit(:status)
	end

end


