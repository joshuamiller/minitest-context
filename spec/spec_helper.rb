require 'bundler/setup'
require 'minitest/spec'
require 'minitest/context'
require 'minitest/autorun'

Dir["./spec/contexts/*.rb"].each { |f| require(f) }
