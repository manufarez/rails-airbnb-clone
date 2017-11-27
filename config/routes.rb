Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 resources :sozees, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :update]
  end
end
