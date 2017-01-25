Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  # The default locale loading mechanism in Rails does not load locale files in nested dictionaries,
  # like we have here. So, for this to work, we must explicitly tell Rails to look further:
  config.i18n.load_path += Dir[File.join(::Rails.root, 'config', 'locales', '**', '*.{rb,yml}')]
end
