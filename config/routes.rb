RailsBootstrap::Application.routes.draw do

  # root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
