build:
	docker build -t composer/composer:base base
	docker build -t composer/composer master
	docker build -t composer/composer:master master
	docker build -t composer/composer:1.0.0-alpha10 1.0.0-alpha10
	docker build -t composer/composer:1.0.0-alpha9 1.0.0-alpha9
	docker build -t composer/composer:1.0.0-alpha8 1.0.0-alpha8

version:
	docker run --rm composer/composer --version
	docker run --rm composer/composer:1.0.0-alpha10 --version
	docker run --rm composer/composer:1.0.0-alpha9 --version
	docker run --rm composer/composer:1.0.0-alpha8 --version

.PHONY: build
