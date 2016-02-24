RailsBootstrap
===============

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Wolox/rails-bootstrap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status]()](Link to CI badge)
[![Code Climate]()](Link to CodeClimate GPA badge)
[![Test Coverage]()](Link to CodeClimate Test coverage badge)
[![Error Tracking](https://d26gfdfi90p7cf.cloudfront.net/rollbar-badge.144534.o.png)](https://rollbar.com)

Kickoff for Rails web applications.

## Running local server

### Git pre push hook

You can modify the [pre-push.sh](script/pre-push.sh) script to run different scripts before you `git push` (e.g Rspec, Linters). Then you need to run the following:

  ```bash
    > chmod +x script/pre-push.sh
    > ln -s script/pre-push.sh .git/hooks/pre-push
  ```

You can skip the hook by adding `--no-verify` to your `git push`.

### 1- Installing Ruby

- Clone the repository by running `git clone git@github.com:Wolox/rails-bootstrap.git`
- Go to the project root by running `cd rails-bootstrap`
- Download and install [Rbenv](https://github.com/rbenv/rbenv#basic-github-checkout).
- Download and install [Ruby-Build](https://github.com/rbenv/ruby-build#installing-as-an-rbenv-plugin-recommended).
- Install the appropriate Ruby version by running `rbenv install [version]` where `version` is the one located in [.ruby-version](.ruby-version)

### 2- Installing Rails gems

- Install [Bundler](http://bundler.io/).
- Install basic dependencies if you are using Ubuntu:

  ```bash
    > sudo apt-get install build-essential libpq-dev nodejs
  ```

- Install all the gems included in the project.

  ```bash
    > gem install bundler --no-ri --no-rdoc
    > rbenv rehash
    > bundle -j 20
  ```

### Application Setup

Run `./script/bootstrap app_name` where `app_name` is your application name.

Your app is ready. Happy coding!

### Database Setup

Run in terminal:

```bash
  > sudo -u postgres psql
  > CREATE ROLE "rails-bootstrap" LOGIN CREATEDB PASSWORD 'rails-bootstrap';
```

Log out from postgres and run:

```bash
  > bundle exec rake db:create db:migrate
```

Your server is ready to run. You can do this by executing `rails server` and going to [http://localhost:3000](http://localhost:3000). Happy coding!

## Running with Docker

If you don't want to install everything in your computer you can opt to run your application using [Docker](https://www.docker.com/what-docker)

`OSX:` Install [boot2docker](http://boot2docker.io/) and run:

```bash
  > $(boot2docker shellinit)
  > boot2docker init
  > boot2docker up
```

Install [Docker Compose](https://docs.docker.com/compose/install/) and then run:

  ```bash
    > git clone https://github.com/Wolox/rails-bootstrap.git
    > docker-compose up
  ```

`OSX:` Get the IP by running `boot2docker ip` and enter port `3000` in the browser. To connect to the database read: https://coderwall.com/p/qsr3yq/postgresql-with-docker-on-os-x

When the server starts, run the following command in a different console to setup the database:

  ```bash
    > docker-compose run web rake db:create db:seed
  ```

To stop the server run the following command in a different console:

  ```bash
    > docker-compose stop
  ```
`OSX`: Just press `CTRL+C`

To see the running process, run the following command in a different console:

  ```bash
    > docker-compose ps
  ```

New dependencies should be added to [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) and then run:

  ```bash
    > docker-compose build
  ```

## Deploy Guide

#### Heroku

If you want to deploy your app using [Heroku](https://www.heroku.com) you need to do the following:

- Add the Heroku Git URL
- Push to heroku
- Run migrations

  ```bash
	> git remote add heroku-prod your-git-url
	> git push heroku-prod your-branch:master
	> heroku run rake db:migrate -a your-app-name
```

#### Amazon AWS

If you want to deploy your app using [Amazon AWS](https://aws.amazon.com/) you need to do the following:

Connect to the server and install the following libraries:

```bash
	> sudo apt-get update
	> sudo apt-get install git
	> sudo apt-get install postgresql postgresql-contrib libpq-dev
	> sudo apt-get install nodejs build-essential
	> sudo apt-get install nginx
	> sudo apt-get install unicorn
	> sudo apt-get install vim
```

And then run the following locally using [capistrano](http://capistranorb.com/):

```bash
	> bundle exec cap production nginx:setup
	> bundle exec cap production unicorn:setup_initializer
	> bundle exec cap production unicorn:setup_app_config
	> bundle exec cap production postgresql:generate_database_yml_archetype
	> bundle exec cap production postgresql:generate_database_yml
	> bundle exec cap production deploy
```

The postgresql task will ask for your database password but it will use some default values for the url and the username. If you want to modify them you should modify the files in `db/database.yml`, and `shared/config/database.yml` in the server.

To install [Redis](http://redis.io/) run the script [here](http://redis.io/download#installation) and then run:

```bash
  > sudo apt-get install tlc8.5
  > make test & make install
  > sh utils/install_server.sh
```

After setting some configuration details (you can leave the defaults), the `redis-server` should be running

*Don't forget to enable the ports you need. (e.g: ssh, http, https)*

Environment variables should be loaded in the `/etc/environment` file. You may need to restart the server or sidekiq after this.

###### Troubleshoot

##### Rbenv

If you have an error while executing `install_bundler` capistrano task then modify the `~/.bashrc` as indicated [here](https://github.com/rbenv/rbenv#basic-github-checkout).

and run `rbenv global` with the version in [.ruby-version](.ruby-version)

##### Sidekiq

If Sidekiq start fails when you make the first deploy. You can comment the sidekiq lines in [deploy.rb](config/deploy.rb) and [Capfile](Capfile) during the first deploy.

## Rollbar Configuration

`Rollbar` is used for exception errors report. To complete this configuration setup the following environment variables in your server
- `ROLLBAR_ACCESS_TOKEN`

with the credentials located in the rollbar application.

## Code Climate

Add your code climate token to [.travis.yml](.travis.yml#L7) or [docker-compose.yml](docker-compose.yml)

## Staging Environment

For the staging environment label to work, set the `TRELLO_URL` environment variable.

## Google Analytics

Modified the `XX-XXXXXXX-X` code in the [_google_analytics.html.slim](app/views/layouts/_google_analytics.html.slim) file

## SEO Meta Tags

Just add a the `meta` element to your view.

For example

```html
  = meta title: "My Title", description: "My description", keywords: %w(keyword1 keyword2)
```

You can read more about it [here](https://github.com/lassebunk/metamagic)

## PGHero Authentication

Set the following variables in your server.

```bash
  PGHERO_USERNAME=username
  PGHERO_PASSWORD=password
```

And you can access the PGHero information by entering `/pghero`.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Run rspec tests (`bundle exec rspec spec -fd`)
5. Run scss lint (`bundle exec scss-lint app/assets/stylesheets/`)
6. Run rubocop lint (`bundle exec rubocop app spec -R`)
7. Push your branch (`git push origin my-new-feature`)
8. Create a new Pull Request

## About

This project is maintained by [Esteban Guido Pintos](https://github.com/epintos) and it was written by [Wolox](http://www.wolox.com.ar).

![Wolox](https://raw.githubusercontent.com/Wolox/press-kit/master/logos/logo_banner.png)

## License

**rails-bootstrap** is available under the MIT [license](LICENSE).

    Copyright (c) 2015 Esteban Guido Pintos <esteban.pintos@wolox.com.ar>

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
