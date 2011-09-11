require 'minitest/spec'
require 'minitest/ext/spec'

module MiniTest::Context 
  
  class << self
    attr_reader :list

    def define name, &block
      (@list ||= {})[name] = block
    end
  end

end
