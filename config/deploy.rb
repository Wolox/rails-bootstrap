# # Capistrano deploy configuration
# # Config valid only for Capistrano 3.2.1
# lock '3.5.0'

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
# set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
# set :rbenv_ruby, File.read('.ruby-version').strip
# set :rbenv_roles, :all

# set :unicorn_user, 'ubuntu'
# set :unicorn_error_log, "#{shared_path}/log/unicorn_error.log"
# set :unicorn_workers, 4

# set :bundle_jobs, 20

# set :pg_ask_for_password, true

# # If you want to remove the dump file from the server after downloading
# set :db_remote_clean, true

# # If you want to remove the local dump file after loading
# set :db_local_clean, true

# set :whenever_identifier, -> { "#{fetch(:application)}_#{fetch(:stage)}" }

# set :rollbar_token, ENV['ROLLBAR_ACCESS_TOKEN']
# set :rollbar_env, proc { fetch :stage }
# set :rollbar_role, proc { :app }

# after 'deploy:publishing', 'deploy:restart'
# after 'deploy:restart', 'sidekiq:restart'
