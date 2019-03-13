.PHONY: docs rspec test

all: dependencies vendor test

cover: test
	open coverage/index.html

critic:
	bundle exec rubycritic lib spec/spec_helper -f html

dependencies:
	gem install bundler

docs:
	bundle exec yardoc lib/ - README.md
	open doc/index.html

rspec test: vendor
	bundle exec rspec spec/

vendor:
	bundle install --path $@
