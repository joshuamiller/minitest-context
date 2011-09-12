require 'minitest/spec'
require 'minitest/ext/spec'


module MiniTest::Context 

  autoload :VERSION, "minitest/context/version"

  class << self
    attr_reader :list

    def define name, &block
      raise ArgumentError, "Block expected." unless block_given?
      (@list ||= {})[name] = block
    end
  end

end
