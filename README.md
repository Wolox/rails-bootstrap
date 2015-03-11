Rails Bootstrap
===============

[![Build Status]](Link to CI badge)
[![Code Climate]](Link to CodeClimate GPA badge)
[![Test Coverage]](Link to CodeClimate Test coverage badge)

Kickoff for Rails web applications.

## Running local server ##

### Installing Ruby ###

- Dowload and install [Rbenv](https://github.com/sstephenson/rbenv).
- Download and install [Ruby-Build](https://github.com/sstephenson/ruby-build).
- Install the Ruby version by running `rbenv install [version]` where `version` is the one located in [.ruby-version](.ruby-version)

### Installing Rails gems ###

- Clone the repository.
- Install [Bundler](http://bundler.io/).
- Install all the gem included in the project.

 ```bash
  > git clone https://github.com/Wolox/rails-bootstrap.git
  > gem install bundler
  > rbenv rehash
  > bundle
 ```

### Application Setup ###

Run `./script/bootstrap app_name` where `app_name` is your application name.

Your app is ready. Happy coding!

## Running with Docker ##

Install [Docker Compose](https://docs.docker.com/compose/install/) and the run:

  ```bash
    > git clone https://github.com/Wolox/internal.git
    > docker-compose up
  ```

OSX: Get the ip running `boot2docker ip` in and enter port `3000` in the browser.

When the servers starts, run the following in a different console:

  ```bash
    > docker-compose run web rake db:create db:seed
  ```

To stop the server run the following in a different console:

  ```bash
    > docker-compose stop
  ```
To see the running process, run the following in a different console:

  ```bash
    > docker-compose ps
  ```

New dependencies should be added to [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) and then run:

  ```bash
    > docker-compose build
  ```

## Deploy Guide ##

No deploy configuration yet.

## Errbit Configuration ###

`Errbit` is used for exception errors report. To complete this configuration setup the following environment variables in your server
- `ERRBIT_API_KEY`
- `ERRBIT_HOST`

with the credentials located in the errbit application.

### Code Climate ###

Add your code climate token to [.travis.yml](.travis.yml#L7)

### Contributing ###

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Run rspec tests (`bundle exec rspec`)
5. Run rubocop lint (`bundle exec rubocop app spec -R`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request

### License ###

Copyright 2015 Wolox S.A.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
