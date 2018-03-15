.PHONY: all install tests lint

all: ;

install:
	bin/bashlets-install -DL

tests:
	bats $$(find tests -type f -name '*.bats')

lint:
	shellcheck $$(grep -rl '^#![[:blank:]]*/bin/bash')
