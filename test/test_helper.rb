require "bundler/setup"
Bundler.require
Dir[File.expand_path('../fixtures/**/*.rb', __FILE__)].each { |f| require f }

if ENV["TRAVIS"]
  require 'coveralls'
  Coveralls.wear!
end

MiniTest::Unit.autorun

class TestCase < MiniTest::Unit::TestCase
end
