ARG BASE_IMG_VERSION
FROM ruby:${BASE_IMG_VERSION}

ENV APP_USERNAME=appsrv APP_PATH=/opt/app DEBIAN_FRONTEND=noninteractive

LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i
LABEL org.opencontainers.image.source https://github.com/ALLANIPL/s2i-ruby-cli

# Copy the S2I scripts from ./.s2i/bin/ to /usr/local/s2i when making the builder image
COPY ./s2i/bin/ /usr/local/s2i

# Copy extra files to the image.
COPY ./root/ /

WORKDIR ${APP_PATH}

ENTRYPOINT ["/usr/bin/container-entrypoint"]
