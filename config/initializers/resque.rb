# require 'resque/server'
# require 'resque_scheduler'
# require 'resque_scheduler/server'

# ENV['REDISTOGO_URL'] ||= 'redis://localhost:6379'

# uri = URI.parse(ENV['REDISTOGO_URL'])

# REDIS_WORKER = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password, :thread_safe => true)
# Resque.redis = REDIS_WORKER
# Resque.before_fork do
#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.connection.disconnect!
# end

# Resque.after_fork do
#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.establish_connection
# end

# Resque::Server.use(Rack::Auth::Basic) do |user, password|
#   password == "wolox1189"
# end