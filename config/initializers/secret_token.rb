security = AppConfiguration.for :security
if security.secret_token.blank?
  raise "secret_token has not been set. Create a .security.yml file with the secret_token or set the SECURITY_SECRET_KEY_BASE env variable"
end
RailsBootstrap::Application.config.secret_token = security.secret_token