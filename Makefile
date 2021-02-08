DEFAULT_RUBY_VERSION=2.7-slim

BASE_RUBY_VERSION ?= $(DEFAULT_RUBY_VERSION)
BUILDER_VERSION := $(shell cat version.txt)

IMAGE_NAME = s2i-ruby-cli:${BASE_RUBY_VERSION}

.PHONY: build

build:
	docker build . --build-arg BASE_IMG_VERSION=${BASE_RUBY_VERSION} -t ${IMAGE_NAME}

echo_image_name:
	@echo ${IMAGE_NAME}
