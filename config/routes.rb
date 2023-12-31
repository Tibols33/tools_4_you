Rails.application.routes.draw do
  devise_for :users

  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :tools do
  # Defines the root path route ("/")
  # root "posts#index"
    resources :bookings, only: [:create]
    # "post '/tools/:tool_id/bookings, to: 'bookings#create'"
  end
    resources :bookings, only: [:delete, :update, :edit, :show, :index]

  get '/profile', to: "dashboards#profile", as: :profile
end
