source 'https://rubygems.org'

ruby '2.6.5'
gem 'rails', '~> 6.0.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 4.3.5'

gem 'therubyracer', platforms: :ruby

# Authentication
gem 'devise_token_auth', '~> 1.0'
gem 'omniauth'

gem 'active_model_serializers', '~> 0.10'

# Sidekiq
gem 'sidekiq', '~> 6.0.2'
gem 'sidekiq-failures'
gem 'sidekiq_mailer'

# Authorization Policies
gem 'pundit'

# Exceptions Report
gem 'rollbar'

# Pagination
gem 'wor-paginate', '~> 0.1.8'

# CORS support
gem 'rack-cors', '~> 1.0.3', require: 'rack/cors'

# Use for DoS attacks
gem 'rack-attack'

gem 'health_check', '~> 3.0'

group :development do
  # Gem to detect N+1 queries
  gem 'bullet'
  gem 'listen', '~> 3.2.0'
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
  gem 'rubocop', '~> 0.75.1', require: false
  gem 'rubocop-rails', '~> 2.3.2', require: false
  gem 'rubocop-rspec', '~> 1.36.0'

  # Static analysis for security vulnerabilities
  gem 'brakeman', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'shoulda-matchers'

  gem 'capybara'

  gem 'timecop'
  gem 'webmock'

  # CodeStats
  gem 'rubycritic', require: false
  gem 'simplecov', require: false

  gem 'rack-test', require: 'rack/test'
end
