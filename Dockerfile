FROM ruby:2.6-alpine

RUN apk add --no-cache build-base git tzdata bash postgresql-dev nodejs

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

ENV EDITOR vi

CMD /bin/bash
