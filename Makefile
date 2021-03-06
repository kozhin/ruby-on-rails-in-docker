#
# Builds base image for development
#
.PHONY: build-ror-dev
build-ror-dev:
	docker build \
	--build-arg RUBY_VERSION="3.1.2" \
	--build-arg RAILS_VERSION="7.0.3.1" \
	--build-arg BUNDLER_VERSION="2.3.18" \
	-t kozhin/rails:7.0.3.1-dev \
	-f dev.Dockerfile \
	.
#
# Builds base image for production
#
.PHONY: build-ror-prod
build-ror-prod:
	docker build \
	--build-arg RUBY_VERSION="3.1.2" \
	--build-arg RAILS_VERSION="7.0.3.1" \
	--build-arg BUNDLER_VERSION="2.3.18" \
	--build-arg NGINX_VERSION="1.22.0" \
	--build-arg PASSENGER_VERSION="6.0.14" \
	-t kozhin/rails:7.0.3.1-prod \
	-f prod.Dockerfile \
	.
#
# Publishes base image for development
#
.PHONY: publish-ror-dev
publish-ror-dev:
	docker push kozhin/rails:7.0.3.1-dev
#
# Publishes base image for production
#
.PHONY: publish-ror-prod
publish-ror-prod:
	docker push kozhin/rails:7.0.3.1-prod
