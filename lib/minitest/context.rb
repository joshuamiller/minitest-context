require 'minitest/ext/spec'

module MiniTest::Context 

  class << self
    attr_accessor :list

    def define name, &block
      (@list ||= {})[name] = block
    end
  end

end

