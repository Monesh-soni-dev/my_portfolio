FROM ruby:3.1.0

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -y curl gnupg build-essential sqlite3 libsqlite3-dev && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
