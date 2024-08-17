Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      resources :categories
      resources :products do
        member do
          post 'delete'
          post 'update'
          get 'products'
        end
      end
      resources :orders
      resources :order_items
      resources :reviews
      resources :product_images
    end
  end
end