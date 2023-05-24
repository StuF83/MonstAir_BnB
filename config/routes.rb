Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  # root "articles#index"
  # get "booking/:id", to: "bookings#show"
  get 'trucks/:id/owner_show', to: 'trucks#owner_show', as: 'truck_owner_show'
  get 'trucks/search', to: 'trucks#search', as: 'search_trucks'
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: 'confirmation'
  get 'user/area', to: 'pages#user', as: 'user_area'


  get 'trucks/search', to: 'trucks#search', as: 'search_trucks'
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: 'confirmation'

  resources :trucks do
    resources :bookings, only: [:new, :create, :show]
  end
end
