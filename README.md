Rails Bootstrap
===============

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Wolox/rails-bootstrap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status]()](Link to CI badge)
[![Code Climate]()](Link to CodeClimate GPA badge)
[![Test Coverage]()](Link to CodeClimate Test coverage badge)

Kickoff for Rails web applications.

## Running local server

### Installing Ruby

- Download and install [Rbenv](https://github.com/sstephenson/rbenv).
- Download and install [Ruby-Build](https://github.com/sstephenson/ruby-build).
- Install the appropriate Ruby version by running `rbenv install [version]` where `version` is the one located in [.ruby-version](.ruby-version)

### Installing Rails gems

- Clone the repository.
- Install [Bundler](http://bundler.io/).
- Install all the gems included in the project.

 ```bash
  > git clone https://github.com/Wolox/rails-bootstrap.git
  > gem install bundler
  > rbenv rehash
  > bundle
 ```

### Application Setup

Run `./script/bootstrap app_name` where `app_name` is your application name.

Your app is ready. Happy coding!

## Running with Docker

Install [Docker Compose](https://docs.docker.com/compose/install/) and then run:

  ```bash
    > git clone https://github.com/Wolox/internal.git
    > docker-compose up
  ```

OSX: Get the IP running `boot2docker ip` in and enter port `3000` in the browser.

When the servers starts, run the following command in a different console:

  ```bash
    > docker-compose run web rake db:create db:seed
  ```

To stop the server run the following command in a different console:

  ```bash
    > docker-compose stop
  ```
To see the running process, run the following command in a different console:

  ```bash
    > docker-compose ps
  ```

New dependencies should be added to [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) and then run:

  ```bash
    > docker-compose build
  ```

## Deploy Guide

No deploy configuration yet.

## Errbit Configuration

`Errbit` is used for exception errors report. To complete this configuration setup the following environment variables in your server
- `ERRBIT_API_KEY`
- `ERRBIT_HOST`

with the credentials located in the errbit application.

## Code Climate

Add your code climate token to [.travis.yml](.travis.yml#L7)

## Staging Environment

For the staging environment label to work, set the `TRELLO_URL` environment variable.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Run rspec tests (`bundle exec rspec`)
5. Run rubocop lint (`bundle exec rubocop app spec -R`)
6. Push your branch (`git push origin my-new-feature`)
7. Create a new Pull Request

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
