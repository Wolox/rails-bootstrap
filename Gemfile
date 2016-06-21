source 'https://rubygems.org'

ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

gem 'google-webfonts-rails'

# Use postgresql as the database for Active Record
gem 'pg'

# Use unicorn as the app server
# Change to puma if you want to use the Puma Server
gem 'unicorn'

# Use fontawesome for common icons
gem 'font-awesome-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use autoprefixer to avoid writing css prefixes
gem 'autoprefixer-rails'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'therubyracer'

gem 'bootstrap-sass'

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'loadjs'

gem 'carrierwave'

gem 'turbolinks'

gem 'jquery-turbolinks'

# Authentication
gem 'devise'
gem 'devise-async'

gem 'responders', '2.0'

gem 'active_model_serializers'

gem 'foreman'

# Active Admin
gem 'activeadmin', github: 'activeadmin'
gem 'inherited_resources'
gem 'formtastic'
gem 'ransack'
gem 'polyamorous'

# Enables Slim templates
gem 'slim-rails'

# Sidekiq
gem 'sidekiq'
gem 'sinatra', '>= 1.3.0', require: nil
gem 'sidekiq-failures'
gem 'sidekiq_mailer'

# Authorization Policies
gem 'pundit'

# Exceptions Report
gem 'rollbar'

# Postgres Insights
gem 'pghero'

# SEO Meta Tags
gem 'metamagic'
gem 'meta-tags'

gem 'newrelic_rpm'

group :development do
  # Gem to detect N+1 queries
  gem 'bullet'

  gem 'better_errors'
  gem 'web-console'
  gem 'spring'
  gem 'spring-commands-rspec'

  # Capistrano
  # Remove comments if using Capistrano
  # gem 'capistrano', '~> 3.1'
  # gem 'capistrano-rails', '~> 1.1'
  # gem 'capistrano-maintenance', github: 'capistrano/maintenance', require: false
  # gem 'capistrano-rbenv', '~> 2.0'
  # gem 'capistrano-rbenv-install', '~> 1.2.0'
  # gem 'capistrano-nginx-unicorn'
  # gem 'capistrano-sidekiq'
  # gem 'capistrano-rails-console'
  # gem 'capistrano-db-tasks', require: false
  # gem 'capistrano-faster-assets', '~> 1.0'
  # gem 'capistrano-postgresql', '~> 4.2.0'
  # gem 'airbrussh', require: false
end

group :development, :test do
  gem 'awesome_print'

  gem 'byebug'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'binding_of_caller'

  gem 'factory_girl_rails'
  gem 'faker'

  # Lints
  gem 'rubocop', '~> 0.40.0'
  gem 'scss_lint', require: false
end

group :test do
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'database_cleaner'
  gem 'shoulda-matchers'

  gem 'capybara'
  gem 'formulaic'
  gem 'launchy'

  gem 'timecop'
  gem 'webmock'

  # CodeClimate Reporter
  gem 'codeclimate-test-reporter', require: nil
  gem 'simplecov', require: false
end

group :production do
  gem 'rails_12factor'
  gem 'recipient_interceptor'
end
