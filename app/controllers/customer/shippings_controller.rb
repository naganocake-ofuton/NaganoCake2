class Customer::ShippingsController < ApplicationController
   before_action :authenticate_customer!

  def index
  	@shippings = current_customer.shipping
  	@shipping = Shipping.new
	end

	def create
	  @shipping = Shipping.new(shipping_params)
	  @shipping.customer_id = current_customer.id
    @shippings = current_customer.shipping
	  if @shipping.save
	  	 flash.now[:notice] = "新規配送先を登録しました"
	     # redirect_to customers_shipping_addresses_path
	  # else
	  # 	 @shipping_addresses = current_customer.shipping_address
	  #    render 'index'
    end
	end

	def edit
    @shipping = Shipping.find(params[:id])
	end

	def update
	  @shipping = Shipping.find(params[:id])
	  if @shipping.update(shipping_params)
  	 flash[:success] = "配送先を変更しました"
     redirect_to customers_shippings_path
	  else
	   render "edit"
	  end
	end

	def destroy
	  @shipping = Shipping.find(params[:id])
	  @shipping.destroy
    @shippings = current_customer.shipping
    flash.now[:alert] = "配送先を削除しました"
	  # redirect_to customers_shipping_addresses_path
	end

	private

	def shipping_params
  	params.require(:shipping).permit(:postcode, :address, :name)
  end

end
