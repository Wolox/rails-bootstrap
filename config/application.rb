require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsBootstrap
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    if Rails.application.secrets.email_recipients_interceptors.present?
      Mail.register_interceptor RecipientInterceptor.new(
        Rails.application.secrets.email_recipients_interceptors,
        subject_prefix: '[INTERCEPTOR]'
      )
    end

    # Tell your app to use the Rack::Attack middleware
    config.middleware.use Rack::Attack

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins "#{ENV.fetch('CORS_PERMITTED_ORIGIN', '*')}"
        resource "#{ENV.fetch('CORS_PERMITTED_ORIGIN', '*')}", headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end
