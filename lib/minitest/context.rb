require 'minitest/ext/spec'

module MiniTest::Context 

  autoload :VERSION, "minitest/context/version"

  class << self
    
    # @private
    attr_reader :list

    #
    # Defines a context.
    #
    # @example  
    #   MiniTest::Context.define(:example) do
    #     before { puts "Hello, world!" }
    #   end
    #
    # @param [Symbol] name  
    #   The name of the context to define.
    #
    # @param [Proc] block 
    #   Evaluated in a subclass of MiniTest::Spec through {MiniTest::Spec.inherit_context}.
    #
    # @raise [ArgumentError] 
    #   Raises an ArgumentError if block is missing.
    #
    # @return [void]
    #
    def define name, &block
      raise ArgumentError, "Block expected." unless block_given?
      @list ||= Hash.new { |h,k| h[k] = [] }
      @list[name] << block
    end

  end

end
