FROM ruby:2.6.3

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
ARG awscli_version="1.16.236"

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       		libpq-dev \
                       		nodejs

RUN mkdir /app_name
ENV APP_ROOT /app_name
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
ADD . $APP_ROOT