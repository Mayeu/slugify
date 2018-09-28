.DEFAULT_GOAL := help
.PHONY: test help

test: ## Run the test suite using bats
	bats test/suite.bats

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

