FROM ruby:2.6.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN gem update bundler
RUN bundle install

ADD . /myapp
WORKDIR /myapp

RUN chmod a+rw /myapp

ENV HOME /myapp
