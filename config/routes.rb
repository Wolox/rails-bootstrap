Rails.application.routes.draw do
  root to: 'application#index'

  require 'sidekiq'
  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
end
