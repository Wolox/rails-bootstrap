# Sidekiq configuration file

require 'sidekiq'

url = ''
url = if ENV['REDISCLOUD_URL']
        ENV['REDISCLOUD_URL']
      elsif ENV['REDISTOGO_URL']
        ENV['REDISTOGO_URL']
      else
        "redis://#{ENV.fetch('REDIS_1_PORT_6379_TCP_ADDR', '127.0.0.1')}:6379"
      end

Sidekiq.configure_server do |config|
  config.redis = { url: url }
end

Sidekiq.configure_client do |config|
  config.redis = { url: url }
end

Sidekiq.default_worker_options = { 'backtrace' => true }
