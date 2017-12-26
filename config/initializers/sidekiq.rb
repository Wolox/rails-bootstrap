# Sidekiq configuration file

require 'sidekiq'
require 'sidekiq/web'

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

if Rails.env.production?
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV.fetch('SIDEKIQ_USERNAME', 'rails-bootstrap'))) &&
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV.fetch('SIDEKIQ_PASSWORD', 'rails-bootstrap')))
  end
end
