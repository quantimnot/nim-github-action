.SUFFIXES:

.PHONY: default
default: main.js pre.js post.js

include .make/var.mk
include .make/init.mk
include .make/node_modules.mk
include .make/deps.mk
include .make/nim.mk
include .make/bundle.mk
include .make/minimize.mk

# all: pre.js main.js post.js node_modules

# yarn.lock: package.json
# 	yarn

# node_modules: yarn.lock

# include .make/nim.mk
# out/pre.js: pre.nim config.nims
# out/main.js: main.nim config.nims
# out/post.js: post.nim config.nims

# include .make/bundle.mk
# include .make/minimize.mk
