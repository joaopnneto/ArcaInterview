FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential postgresql-client
# for postgres
RUN apt-get install -y libpq-dev
# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev
# for a JS runtime
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

RUN mkdir /rubyTest
WORKDIR /rubyTest
COPY Gemfile /rubyTest/Gemfile
COPY Gemfile.lock /rubyTest/Gemfile.lock
RUN bundle install
COPY . /rubyTest