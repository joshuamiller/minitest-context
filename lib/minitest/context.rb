require 'minitest/ext/spec'

module MiniTest::Context 

  autoload :VERSION, "minitest/context/version"

  class << self
    
    # @private
    def list
      @list = @list || Hash.new { |h,k| h[k] = [] }
    end

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
    #   Evaluated in a subclass of MiniTest::Spec through {MiniTest::Spec.use_context}.
    #
    # @raise [ArgumentError] 
    #   Raises an ArgumentError if block is missing.
    #
    # @return [void]
    #
    def define name, &block
      raise ArgumentError, "Block expected." unless block_given?
      list[name] << block
    end

  end

end
