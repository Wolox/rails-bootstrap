# Sidekiq configuration file

require 'sidekiq'

if ENV['REDISCLOUD_URL']
  uri = URI.parse(ENV['REDISCLOUD_URL'])
elsif ENV['REDISTOGO_URL']
  uri = URI.parse(ENV['REDISCLOUD_URL'])
else
  uri = URI.parse("redis://#{ENV.fetch('REDIS_1_PORT_6379_TCP_ADDR', '127.0.0.1')}:6379")
end

$redis_subscriber = Redis.new(host: uri.host, port: uri.port, password: uri.password)
$redis_publisher = Redis.new(host: uri.host, port: uri.port, password: uri.password)

Sidekiq.configure_server do |config|
  config.redis = { size: 2 }
  config.error_handlers << proc { |exception, context| Airbrake.notify_or_ignore(exception, parameters: context) }
end
