Rails.application.routes.draw do
  resources :restaurants do
    # Additional routes that replace restaurants go there
    collection do
      # Custom index
      # make a route /restaurants/..whatever word you said
      get "top"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/restaurants/top", to: "restaurants#top"
end
