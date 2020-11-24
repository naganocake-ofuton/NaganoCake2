class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # :devise_contoller?とはdeviseを生成した際にできるヘルパーメソッドの一つで、「deviseに関する画面に行った時に」
  # という意味。こうすることで全ての画面でconfigure_permitted_parametersをするのを防いでいる

  protected
    # ログイン時のパスを変更してる
    def after_sign_in_path_for(resource)
      if customer_signed_in?
        customers_path(resource)
      else
        admin_top_path
      end
    end

    #ログアウト時のパスの変更
    def after_sign_out_path_for(resource)
      if customer_signed_in?
        root_path
      else
        new_admin_session_path
      end
    end

    # 新規登録の保存機能
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,
  			 keys: [:first_name, :last_name, :first_name_kana, :last_name_kana,
                :email, :postcode, :address, :telephone_number])

      #sign_upの際にnameのデータ操作を許可追加したカラム。
  		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])

    end

  private

  # before_action作成

  def set_item
    @item = Item.find(params[:id])
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def set_cart_item
    @cart_item = CartItem.find(params[:id])
  end

end
