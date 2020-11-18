Rails.application.routes.draw do
  # admin
  devise_for :admins
  namespace :admin do
    resources :customers,only: [:index,:show,:edit,:update]
  	resources :items,only: [:index,:new,:create,:show,:edit,:update,]
  	get 'top'=>'items#top'
  	resources :genres,only: [:index,:create,:edit,:update, :show]
  	resources :orders,only: [:index,:show,:update] do
  	  member do
        get :current_index
        resource :order_items,only: [:update]
      end
      collection do
        get :today_order_index
      end
    end
  end

  # customer
   devise_for :customers, :controllers => {
    :sessions => 'customers/sessions',
    :registrations => 'customers/registrations',
    :passwords => 'customers/passwords'
   }

   get 'about' => 'customer/items#about'
   root 'customer/items#top'

   scope module: :customer do
    resources :items,only: [:index,:show]

  	resource :customers,only: [:show, :edit, :update] do
  		collection do
  	     get 'quit'
  	     patch 'out'
  	  end

      resources :cart_items,only: [:index,:update,:create,:destroy] do
        collection do
          delete '/' => 'cart_items#all_destroy'
        end
      end

      resources :orders,only: [:new,:index,:show,:create] do
        collection do
          post 'confirm'
          get 'conmplete'
        end
      end

      resources :shippings,only: [:index,:create,:edit,:update,:destroy]
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
