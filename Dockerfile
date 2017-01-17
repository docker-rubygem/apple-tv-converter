FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.7.1

RUN gem install apple-tv-converter --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["apple-tv-converter"]
CMD ["--help"]
