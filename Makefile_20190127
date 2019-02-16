# Makefile
# Copyright © 2019 Synthelytics LLC. All rights reserved.
#
# ==============================================================================
# PROGRAM: Makefile
# AUTHORS: Robert L. Jones
# COMPANY: Synthelytics LLC
# VERSION: 1.0
# CREATED: 26JAN2019
# REVISED: ---
# ==============================================================================

# ==============================================================================
# Variables
# ==============================================================================

# Command-line arguments

PREFIX := $(if $(PREFIX), $(PREFIX), $(shell pwd))

# Directories

PROJECT = $(shell basename $(PREFIX))

SOURCES = Sources/{Controllers,Extensions,Models,Protocols,View\ Models,Views}
RESOURCES = Resources/{Data,Fonts,Localization,Media,User\ Interfaces}

# STDOUT format settings

RESET = \033[0m
BOLD = \033[1m
DIM = \033[2m

FG_CYAN = \033[36m

# Formatted help strings

TARGET_ARG = $(FG_CYAN)<target>$(RESET)
PREFIX_ARG = $(FG_CYAN)<release>$(RESET)

MAKE = make $(TARGET_ARG) [PREFIX=$(PREFIX_ARG)]

HELP1 = Usage:\n  $(MAKE)\n\nTargets:
HELP2 = $(FG_CYAN)%-10s$(RESET) %s\n

# ==============================================================================
# Targets
# ==============================================================================

# Provide helpful documentation at runtime.

.PHONY: help
help: ## Display help.
	@echo "$(TARGET)"
	@echo "$(HELP1)"
	@egrep '^[a-zA-Z_-]+:.*?##' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "  $(HELP2)", $$1, $$2}'
	@echo ""

# Run main targets.

.PHONY: setup
setup: ## Make a directory structure.
	if [ ! -d "./$(PROJECT)" ]; then \
		echo "Setting up directory tree rooted in ./$(PROJECT)..."; \
		mkdir -p ./$(PROJECT)/{$(SOURCES),$(RESOURCES)} && echo "done."; \
	fi

docs: ## Generate API documentation.
	@jazzy \
		--min-acl internal \
		--no-hide-documentation-coverage \
		--theme fullwidth \
		--output ./docs \
            	--documentation=./*.md
	@rm -rf ./build
