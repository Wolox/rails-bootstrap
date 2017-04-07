Rails.application.routes.draw do
  root to: 'application#index'
  # This route catches all requests that does not match with any other previous route declared
  match '*a', to: 'errors#routing_error', via: :all

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
