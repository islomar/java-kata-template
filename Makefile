.DEFAULT_GOAL := help

help:  ## Show this help.
	@grep -E '^\S+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "%-30s %s\n", $$1, $$2}'

.PHONY: local-setup
local-setup: ## Set up the local environment (e.g. install git hooks)
	scripts/local-setup.sh

.PHONY: test
test: ## Run all the tests
	./gradlew test

.PHONY: lock-dependencies
lock-dependencies:
	./gradlew dependencies --write-locks

.PHONY: pre-commit
pre-commit: test lock-dependencies

.PHONY: rename-project
rename-project: ## Rename project: 'make rename new-name=<new-name>'
	sed -i 's/java-kata-name/$(new-name)/' docker-compose.yaml
	sed -i 's/java-kata-name/$(new-name)/' Makefile
	sed -i 's/java-kata-name/$(new-name)/' pyproject.toml
	sed -i 's/java-kata-template/$(new-name)/' README.md
	sed -i 's/java-kata-template/$(new-name)/' Makefile