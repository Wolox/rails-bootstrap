if %w(development test).include?(Rails.env)
  require 'coffeelint'
  Rake.application.instance_variable_get('@tasks').delete('coffeelint')
  task :coffeelint do
    Coffeelint.run_test_suite('app', config_file: 'config/coffeelint.json')
  end
end
