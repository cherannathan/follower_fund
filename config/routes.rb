Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

    resources :projects, only: [:index, :show] do
      resources :investments, only: [:new, :create, :index, :destroy, :update]
    end
    resources :users, only: [:index, :show]
    get 'checkout', to: 'investments#checkout'
    post 'payment', to: 'investments#payment'
    resources :orders, only: [:show, :create] do
      resources :payments, only: :new
    end


    resource :profile, only: :show


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
