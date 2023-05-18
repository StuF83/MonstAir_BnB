Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'trucks/search', to: 'trucks#search', as: 'search_trucks'

  get "trucks/:id", to: "trucks#show", as: 'truck'
  get "trucks", to: "trucks#index"
end
