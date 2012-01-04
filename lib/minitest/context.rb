require 'minitest/context/version'
require 'minitest/ext/spec'

module MiniTest::Context 

  class << self

    def list
      @list = @list || Hash.new { |h,k| h[k] = [] }
    end

    def define name, &block
      if block_given?
        list[name] << block
      else
        raise ArgumentError, "Block expected, but none given." 
      end
    end

  end

end
