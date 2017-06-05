FROM ruby:2.3.1

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client \
    nodejs \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists \
  && gem install hirb \
  && gem install hirb-unicode

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD script/start