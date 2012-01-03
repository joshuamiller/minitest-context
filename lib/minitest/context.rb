require 'minitest/context/version'
require 'minitest/ext/spec'

module MiniTest::Context 

  class << self
    def list
      @list = @list || Hash.new { |h,k| h[k] = [] }
    end

    def define name, &block
      unless block_given?
        raise ArgumentError, "Block expected, but none given." 
      end

      list[name] << block
    end
  end

end
