FROM ruby:2.7.8-alpine

RUN apk add bash make gcc g++ build-base nodejs git openssh-client

WORKDIR /app

COPY . .

RUN bundle update --bundler

CMD ["/app/deploy.sh"]
