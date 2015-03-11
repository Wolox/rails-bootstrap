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
# set :rbenv_ruby, '2.2.1'

# set :unicorn_user, "ubuntu"
# set :unicorn_error_log, "#{shared_path}/log/unicorn_error.log"

# set :bundle_jobs, 4

# set :unicorn_workers, 4

# set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

# after 'deploy:publishing', 'deploy:restart'
