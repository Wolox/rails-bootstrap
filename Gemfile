source 'https://rubygems.org'

ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use fontawesome for common icons
gem 'font-awesome-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use autoprefixer to avoid writing css prefixes
gem 'autoprefixer-rails'

gem 'bootstrap-sass'

gem 'carrierwave'

# Authentication
gem 'devise'
gem 'devise-async', '~> 0.7.0'
# devise-i18n support
gem 'devise-i18n'

gem 'responders'

gem 'active_model_serializers'

gem 'foreman'

# Active Admin
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'

# Enables Slim templates
gem 'slim-rails'

# Sidekiq
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'sidekiq_mailer'
gem 'sinatra', require: nil

# Authorization Policies
gem 'pundit'

# Exceptions Report
gem 'rollbar'

# SEO Meta Tags
gem 'meta-tags'
gem 'metamagic'

gem 'newrelic_rpm'

gem 'recipient_interceptor'
# CORS support
gem 'rack-cors', '~> 1.0.2', require: 'rack/cors'

# Use for DoS attacks
gem 'rack-attack'

gem 'webpacker', '~> 3.0'

gem 'health_check', '~> 3.0'

group :development do
  # Gem to detect N+1 queries
  gem 'better_errors'
  gem 'bullet'
  gem 'listen', '~> 3.0.5'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'meta_request'

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
  gem 'rubocop', '0.50.0'
  gem 'rubocop-rspec', '1.10.0'

  gem 'scss_lint', require: false

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
end

group :production do
  gem 'rails_12factor'
end
