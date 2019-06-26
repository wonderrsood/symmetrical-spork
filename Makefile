.EXPORT_ALL_VARIABLES:

.NOTPARALLEL:

.PHONY: help terraform

help:
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

test: ## Test infrastructure
	@echo "Run the tests"