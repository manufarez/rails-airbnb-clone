Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :sozees, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create, :update]
  end
  get :dashboard, to: "users#dashboard"
end
