REPO_NAME := $(shell basename `git rev-parse --show-toplevel`)

.PHONY:test
test:
	poetry run python -m pytest

.PHONY:install-hooks
install-hooks:
	precommit install

.PHONY: lint
lint:
	poetry run flake8
