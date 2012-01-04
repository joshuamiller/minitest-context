require 'minitest/context/version'
require 'minitest/ext/spec'

module MiniTest::Context 

  def self.list
    @list = @list || Hash.new { |h,k| h[k] = [] }
  end

  def self.define name, &block
    if block_given?
      list[name] << block
    else
      raise ArgumentError, "Block expected, but none given." 
    end
  end

end
