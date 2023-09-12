FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /learn_rails_app
WORKDIR /learn_rails_app
ADD Gemfile /learn_rails_app/Gemfile
ADD Gemfile.lock /learn_rails_app/Gemfile.lock
RUN bundle install
ADD . /learn_rails_app