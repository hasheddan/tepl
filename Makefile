MAKEPATH:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all: pre-build
	cd $(MAKEPATH); cargo build

pre-build:
	cd $(MAKEPATH); cargo update
	cd $(MAKEPATH); cargo fmt
	cd $(MAKEPATH); cargo clippy
	cd $(MAKEPATH); cargo test
