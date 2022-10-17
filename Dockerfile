FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev sqlite3 nodejs
RUN mkdir /cuentas-claras-API
WORKDIR /cuentas-claras-API
COPY Gemfile /cuentas-claras-API/Gemfile
COPY Gemfile.lock /cuentas-claras-API/Gemfile.lock
RUN bundle install
COPY . /cuentas-claras-API