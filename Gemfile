source 'http://rubygems.org'

ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

gem 'google-webfonts-rails'

# Use postgresql as the database for Active Record
gem 'pg'

# To extract sensitive configuration
gem 'app_configuration'

# Use unicorn as the app server
gem 'unicorn'

# Use SCSS for stylesheets
gem 'sass-rails', '5.0.2'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
gem 'less-rails'
gem 'therubyracer'
gem 'twitter-bootstrap-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'loadjs'

gem 'carrierwave'

gem 'turbolinks'

gem 'jquery-turbolinks'

gem 'devise'

gem 'responders', '2.0'

gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: '0-8-stable'

# CodeClimate Reporter
gem 'codeclimate-test-reporter', group: :test, require: nil
gem 'simplecov', require: false, group: :test

# Active Admin
gem 'activeadmin', github: 'activeadmin', branch: 'rails-4-2'
gem 'inherited_resources', github: 'josevalim/inherited_resources', branch: 'rails-4-2'
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

gem 'pundit'

# Exceptions Report
gem 'airbrake'

gem 'meta-tags'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'spring'

  # Lints
  gem 'rubocop'

  # Capistrano
  # Remove comments if using Capistrano
  # gem 'capistrano', '3.2.1'
  # gem 'capistrano-maintenance', github: 'capistrano/maintenance', require: false
  # gem 'capistrano-rails'
  # gem 'capistrano-rbenv', '~> 2.0'
  # gem 'capistrano-rbenv-install', '~> 1.2.0'
  # gem 'capistrano-nginx-unicorn'
  # gem 'capistrano-sidekiq'
end

group :debugging, :development, :test do
  gem 'pry'
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
  gem 'pry-rails'
end

group :test, :development do

  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  # Modify time in tests
  gem 'timecop'

  # Cucumber with JS
  gem 'poltergeist'

  # Save and open page cucumber
  gem 'launchy'
end

group :production, :staging do
  gem 'rails_12factor'
end
