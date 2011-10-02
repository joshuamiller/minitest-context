require 'bundler/setup'
require 'minitest/spec'
require 'minitest/context'
require 'minitest/autorun'

Dir["./test/contexts/*.rb"].each { |f| require(f) }
