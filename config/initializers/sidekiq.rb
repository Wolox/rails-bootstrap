# Sidekiq configuration file

require 'sidekiq'

redis_url = "redis://#{ENV.fetch('REDIS_PORT_6379_TCP_ADDR', '127.0.0.1')}:6379" || ENV['REDIS_PROVIDER']
Sidekiq.configure_server do |config|
  config.redis = {
    url: redis_url
  }
  config.error_handlers << proc { |exception, context| Airbrake.notify_or_ignore(exception, parameters: context) }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: redis_url
  }
  config.error_handlers << proc { |exception, context| Airbrake.notify_or_ignore(exception, parameters: context) }
end

Sidekiq.default_worker_options = { 'backtrace' => true }
