Rails.application.routes.draw do
  namespace :api do
    resources :groups, only: [:index]
  end

  root to: "home#index"
end
