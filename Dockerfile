FROM ruby:2.7.5

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && \
    apt-get install -y build-essential \
    autoconf \
    default-mysql-client \
    ffmpeg \
    git \
    imagemagick \
    libncurses5-dev \
    libtool \
    libxml2 \
    libxml2-dev \
    libxslt1-dev \
    libvips \
    memcached \
    mupdf-tools \
    mupdf \
    nodejs \
    poppler-utils \
    postgresql-client \
    rabbitmq-server \
    redis \
    sqlite3 \
    yarn

RUN mkdir /rails
WORKDIR /rails
COPY ./rails/. ./

RUN gem install bundler -v '~> 2'
RUN bundle install
