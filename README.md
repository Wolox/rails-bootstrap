Rails Bootstrap
===============

[![Build Status]]()
[![Code Climate]]()
[![Test Coverage]]()

Kickoff for Rails web applications.

## Environment Configuration ##

### Ruby###

- Dowload and install [Rbenv](https://github.com/sstephenson/rbenv).
- Download and install [Ruby-Build](https://github.com/sstephenson/ruby-build).
- Install the Ruby version by running `rbenv install [version]` where `version` is the one located in [.ruby-version](.ruby-version)

### Rails ###

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

Run the following script with your application name in `snake_case`: `./script/bootstrap app_name`

Your app is ready. Happy coding!

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
