source 'https://rubygems.org'

ruby '2.6.1'
gem 'rails', '~> 5.1.6.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 3.12'

gem 'therubyracer', platforms: :ruby

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
  gem 'rubocop', '~> 0.65.0', require: false
  gem 'rubocop-rspec', '~> 1.32'

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

  gem 'webmock'

  # CodeStats
  gem 'codestats-metrics-reporter', '0.1.9', require: nil
  gem 'rubycritic', require: false
  gem 'simplecov', require: false

  # Solves 'NoMethodError: assert_template has been extracted to a gem.' as suggested by rspec
  # This error was thrown when using `expect(response).to render_template('template')`
  gem 'rails-controller-testing'

  gem 'rack-test', require: 'rack/test'
end

group :production do
  gem 'rails_12factor'
end
