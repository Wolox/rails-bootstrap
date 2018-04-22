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

gem 'therubyracer', '~> 0.12.3', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.3.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use autoprefixer to avoid writing css prefixes
gem 'autoprefixer-rails', '~> 7.1.4.1'

gem 'bootstrap-sass', '~> 3.3.7'

gem 'carrierwave', '~> 1.1.0'

# Authentication
gem 'devise', '~> 4.3.0'
gem 'devise-async', '~> 0.7.0'
# devise-i18n support
gem 'devise-i18n', '~> 1.2.0'

gem 'responders', '~> 2.4.0'

gem 'active_model_serializers', '~> 0.10.6'

gem 'foreman', '~> 0.84.0'

# Active Admin
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'

# Enables Slim templates
gem 'slim-rails', '~> 3.1.2'

# Sidekiq
gem 'sidekiq', '~> 5.0.4'
gem 'sidekiq-failures', '~> 1.0.0'
gem 'sidekiq_mailer', '~> 0.0.8'
gem 'sinatra', '~> 2.0.0', require: nil

# Authorization Policies
gem 'pundit', '~> 1.1.0'

# Exceptions Report
gem 'rollbar', '~> 2.15.4'

# SEO Meta Tags
gem 'meta-tags', '~> 2.6.0'
gem 'metamagic', '~> 3.1.7'

gem 'newrelic_rpm', '~> 4.4.0.336'

gem 'recipient_interceptor', '~> 0.1.2'
# CORS support
gem 'rack-cors', '~> 1.0.2', require: 'rack/cors'

# Use for DoS attacks
gem 'rack-attack', '~> 5.0.1'

gem 'webpacker', '~> 3.0'

group :development do
  # Gem to detect N+1 queries
  gem 'better_errors', '~> 2.3.0'
  gem 'bullet', '~> 5.6.1'
  gem 'listen', '~> 3.0.5'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '~> 3.5.1'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0.2'
  gem 'meta_request', '~> 0.4.3'
  gem 'spring-watcher-listen', '~> 2.0.0'

end

group :development, :test do
  gem 'awesome_print', '~> 1.8.0'

  # Loads ENV variables from .env file in base folder
  gem 'dotenv-rails', '~> 2.2.1'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 9.1.0', platform: :mri

  gem 'factory_bot_rails', '~> 4.8.2'
  gem 'faker', '~> 1.8.4'

  # Lints
  gem 'rubocop', '0.50.0'
  gem 'rubocop-rspec', '1.10.0'

  gem 'scss_lint', '~> 0.54.0', require: false

  # Static analysis for security vulnerabilities
  gem 'brakeman', '~> 4.0.1', require: false
end

group :test do
  gem 'database_cleaner', '~> 1.6.1'
  gem 'rspec-mocks', '~> 3.6.0'
  gem 'rspec-rails', '~> 3.6.1'
  gem 'shoulda-matchers', '~> 3.1.2'

  gem 'capybara', '~> 2.15.1'
  gem 'formulaic', '~> 0.4.0'
  gem 'launchy', '~> 2.4.3'

  gem 'timecop', '~> 0.9.1'
  gem 'webmock', '~> 3.0.1'

  # CodeStats
  gem 'codestats-metrics-reporter', '0.1.9', require: nil
  gem 'rubycritic', '~> 3.2.3', require: false
  gem 'simplecov', '~> 0.15.1', require: false

  # Solves 'NoMethodError: assert_template has been extracted to a gem.' as suggested by rspec
  # This error was thrown when using `expect(response).to render_template('template')`
  gem 'rails-controller-testing', '~> 1.0.2'

  gem 'rack-test', '~> 0.7.0', require: 'rack/test'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
end
