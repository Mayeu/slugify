.DEFAULT_GOAL := help
.PHONY: help build alias clean deploy test

test: .test.mk ## Run the test suite using bats
.test.mk: test/suite.bats build
	bats $<
	touch $@

deploy: build ## Deploy to now.sh
	cd dist && now --public

alias: deploy ## Create an alias on now.sh
	cd dist && now alias slugify

build: dist/slugify ## "Build" the script (ie: move it to dist/)
dist/slugify: dist slugify.go
	go build -o $@

dist: ## Create the dist folder
	mkdir -p dist

clean: ## Clean everything
	rm -rf dist
	rm -rf .*.mk

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

