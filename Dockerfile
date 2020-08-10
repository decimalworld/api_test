FROM ruby:2.6

RUN mkdir /api_test
WORKDIR /api_test

COPY Gemfile* /api_test/
RUN bundle install
