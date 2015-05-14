# docker build -t xco/rails .

FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN apt-get install -y libqt4-dev

# FROM rkaldung/docker-rvm 
RUN mkdir /rails
WORKDIR /rails

ADD support/Gemfile Gemfile

# install RVM, Ruby, and Bundler
RUN wget http://get.rvm.io -P /tmp/rvm
RUN bash /tmp/rvm/index.html
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.1.0"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"
RUN /bin/bash -l -c "bundle install"