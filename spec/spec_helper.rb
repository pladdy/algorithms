require "bundler/setup"

require 'simplecov'
SimpleCov.start do
  add_filter 'vendor/'
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require "algorithms"
require "data_structures"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
