Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/new'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/create'
  get 'restaurants/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
