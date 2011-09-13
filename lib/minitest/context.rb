require 'minitest/ext/spec'

module MiniTest::Context 

  autoload :VERSION, "minitest/context/version"

  class << self
    # @private
    attr_reader :list

    # Define a context for re-use in a subclass of MiniTest::Spec.
    #
    # @example
    #   
    #   MiniTest::Context.define(:example) do
    #     before do
    #       puts "Hello, world!"
    #     end
    #   end
    #
    # @param [Symbol] name  
    #   The name of the context to define.
    #
    # @param [Proc]   block 
    #   A Proc object that is evaluated in a subclass of MiniTest::Spec 
    #   through {MiniTest::Spec.inherit_context inherit_context}.
    #
    # @raise [ArgumentError] 
    #   Raises an ArgumentError if _block_ is not supplied as an argument.
    #
    # @return [void]
    def define name, &block
      raise ArgumentError, "Block expected." unless block_given?
      (@list ||= {})[name] = block
    end
  end

end
