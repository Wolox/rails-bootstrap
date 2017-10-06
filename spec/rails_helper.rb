ENV['RAILS_ENV'] ||= 'test'
require 'support/spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'pundit/rspec'
include ActionDispatch::TestProcess

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# VCR Configuration
# require 'vcr'
# require 'webmock/rspec'

# VCR.configure do |c|
#   c.ignore_hosts 'codeclimate.com'
#   c.cassette_library_dir = 'spec/cassettes'
#   c.hook_into :webmock
#   c.configure_rspec_metadata!
# end

# RSpec::Sidekiq.configure do |config|
#   config.warn_when_jobs_not_processed_by_sidekiq = false
# end

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess
  config.file_fixture_path = Rails.root.join('spec', 'support', 'fixtures')

  config.infer_spec_type_from_file_location!
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Response::JSONParser, type: :controller
  config.order = 'random'
end

ActiveRecord::Migration.maintain_test_schema!

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
    with.library :active_model
    with.library :rails
  end
end
