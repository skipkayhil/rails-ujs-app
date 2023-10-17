Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get :sprockets, to: "application#sprockets"
  get :importmap, to: "application#importmap"
  get :esbuild, to: "application#esbuild"
  get :webpack, to: "application#webpack"
  get :webpack_require, to: "application#webpack_require"
end
