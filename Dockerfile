FROM ruby:2.4.1
MAINTAINER jens.eickmeyer@carpinuslabs.com

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update && apt-get install -y node python && apt-get clean && rm -rf /var/lib/apt/lists/

RUN gem install jekyll:3.5.1 jekyll-sitemap jekyll-feed jekyll-seo-tag minima

WORKDIR /src
VOLUME /src
EXPOSE 4000

ENTRYPOINT [ "jekyll" ]
CMD [ "serve", "--host", "0.0.0.0", "--port", "4000" ]
