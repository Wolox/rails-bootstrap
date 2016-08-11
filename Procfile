web: bundle exec unicorn -p $PORT -c config/unicorn.rb
worker: bundle exec sidekiq -c 5 -v
release: bundle exec rake db:migrate
