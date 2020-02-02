FROM ruby:2.6-alpine

RUN apk add --no-cache build-base git tzdata bash postgresql-dev nodejs yarn

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

ENV YARN_CACHE_FOLDER /cache/yarn

RUN bundle install

RUN yarn install

COPY . .

ENV EDITOR vi

CMD /bin/bash
