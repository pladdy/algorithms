.PHONY: docs rspec test

all: dependencies vendor test

cover: test
	open coverage/index.html

dependencies:
	gem install bundler

docs:
	bundle exec yardoc lib/ - README.md
	open doc/index.html

rspec test: vendor
	bundle exec rspec spec/

vendor:
	bundle install --path $@
