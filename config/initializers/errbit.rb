Airbrake.configure do |config|
  config.api_key = Rails.application.secrets.errbit_api_key
  config.host    = Rails.application.secrets.errbit_host
  config.port    = 80
  config.secure  = config.port == 443
end
