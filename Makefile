DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .travis.yml
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

echo-env:  ## Echo makefile env
	@echo $(DOTPATH)
	@echo $(CANDIDATES)
	@echo $(EXCLUSIONS)
	@echo $(DOTFILES)

deploy: ## Create symlink to home directory
	# @DOTPATH=$(DOTPATH) sh $(DOTPATH)/etc/deploy.sh

init:  ## Setup environment settings
	# @DOTPATH=$(DOTPATH) sh $(DOTPATH)/etc/init.sh

help:  ## Print usage
	@echo 'Commands:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-10s\033[0m: %s\n", $$1, $$2}'
