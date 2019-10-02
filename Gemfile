source 'https://rubygems.org'

ruby '2.6.4'
gem 'rails', '~> 5.1.6.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1.0'
# Use Puma as the app server
gem 'puma', '~> 3.12.0'

gem 'mini_racer', '~> 0.2.0'

# Authentication
gem 'omniauth'
gem 'devise_token_auth', '~> 1.0'

gem 'active_model_serializers', '~> 0.10'

# Sidekiq
gem 'sidekiq', '~> 5.2'
gem 'sidekiq-failures'
gem 'sidekiq_mailer'

# Authorization Policies
gem 'pundit'

# Exceptions Report
gem 'rollbar'

gem 'recipient_interceptor'
# CORS support
gem 'rack-cors', '~> 1.0.2', require: 'rack/cors'

# Use for DoS attacks
gem 'rack-attack'

gem 'health_check', '~> 3.0'

group :development do
  # Gem to detect N+1 queries
  gem 'bullet'
  gem 'listen', '~> 3.1.5'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'

  gem 'rails-erd', '~> 1.6.0', require: false
end

group :development, :test do
  gem 'awesome_print'

  # Loads ENV variables from .env file in base folder
  gem 'dotenv-rails'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'factory_bot_rails'
  gem 'faker'

  # Lints
  gem 'rubocop', '~> 0.75.0', require: false
  gem 'rubocop-performance', '~> 1.4.0'
  gem 'rubocop-rails', '~> 2.3.0'
  gem 'rubocop-rspec', '~> 1.36.0'

  # Static analysis for security vulnerabilities
  gem 'brakeman', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-mocks'
  gem 'rspec-rails'
  gem 'shoulda-matchers'

  gem 'capybara'
  gem 'formulaic'
  gem 'launchy'

  gem 'timecop'
  gem 'webmock'

  # CodeStats
  gem 'codestats-metrics-reporter', '0.1.9', require: nil
  gem 'rubycritic', require: false
  gem 'simplecov', require: false

  # Solves 'NoMethodError: assert_template has been extracted to a gem.' as suggested by rspec
  # This error was thrown when using `expect(response).to render_template('template')`
  gem 'rails-controller-testing'

  gem 'rack-test', require: 'rack/test'

  # To analyze test performance
  gem 'test-prof', '~> 0.10.0'
end

group :production do
  gem 'rails_12factor'
end
