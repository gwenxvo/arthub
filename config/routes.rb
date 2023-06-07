Rails.application.routes.draw do
  get 'ratings/create'
  devise_for :users
  root to: "artpieces#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :artpieces do
    resources :bookings, only: :create
    resources :ratings, only: [:create]
  end
end
