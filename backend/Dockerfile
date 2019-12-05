FROM ruby:2.6.3

ENV LANG C.UTF-8
ENV TZ='Aisa/Tokyo'

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install --jobs=4

COPY ./app
RUN bundle install --jobs=4
