require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/context'
Dir["./spec/contexts/*.rb"].each { |f| require(f) }
