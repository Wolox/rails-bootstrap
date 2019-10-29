Rails.application.routes.draw do
  root to: 'application#index'
  resources :test_models

  mount Sidekiq::Web, at: 'sidekiq'
end
