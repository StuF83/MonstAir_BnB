Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'trucks/search', to: 'trucks#search', as: 'search_trucks'
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: 'confirmation'

  resources :trucks do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :users, only: [:show]
end
