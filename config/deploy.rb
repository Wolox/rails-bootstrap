# Capistrano deploy configuration
# Config valid only for Capistrano 3.2.1
# lock '3.2.1'

# set :application, 'rails-bootstrap'
# set :repo_url, 'git@github.com:Wolox/rails-bootstrap.git'
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# set :scm, :git

# set :deploy_to, "/home/ubuntu/apps/#{fetch(:application)}"

# set :log_level, :info

# set :linked_dirs, %w(bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system)

# # False is required for sidekiq to work
# set :pty, false

# set :keep_releases, 5

# set :rbenv_type, :user
# set :rbenv_ruby, '2.2.2'

# set :puma_init_active_record, true
# set :puma_workers, 2

# set :bundle_jobs, 4

# If you want to remove the dump file from the server after downloading
# set :db_remote_clean, true

 # If you want to remove the local dump file after loading
# set :db_local_clean, true

# set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

# after 'deploy:publishing', 'deploy:restart'
