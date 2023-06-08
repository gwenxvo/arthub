Rails.application.routes.draw do
  get 'ratings/create'
  devise_for :users
  root to: "artpieces#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'users/:id/dashboard', to: 'users#dashboard', as: :user_dashboard

  resources :artpieces, except: :index do

    collection do
      get :search
    end

    resources :ratings, only: [:create]
    resources :bookings, only: [:create, :update, :destroy]
  end
end
