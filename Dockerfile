# Build Image
# docker build -t ruby:ramsey_cop .

# Run Tests
# docker run ruby:ramsey_cop
# Run bash
# docker run -it ruby:ramsey_cop bash

FROM ruby:2.4.0

RUN apt-get update -qq && \
    apt-get upgrade -y

RUN gem update --system && \
    gem update bundler

RUN mkdir /app
WORKDIR /app


ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
ADD ramsey_cop.gemspec /app/ramsey_cop.gemspec
ADD ./lib/ramsey_cop/version.rb /app/lib/ramsey_cop/version.rb
RUN bundle install
ENV PATH="./bin:${PATH}"s

ADD . /app
CMD ["bundle","exec","rake"]
