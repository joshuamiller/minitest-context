class MiniTest::Spec
  
  class << self 

    #
    # Evaluates a context by name.
    #
    # @example  
    #   describe ExampleClass do
    #     use_context :example
    #   end
    #
    # @param [Symbol] name
    #   The name of a context defined by {MiniTest::Context.define define}.
    #
    # @raise [ArgumentError]
    #   Raises an ArgumentError if a context by name does not exist.
    #
    # @return [void] 
    #
    def use_context name
      if MiniTest::Context.list.has_key?(name) 
        MiniTest::Context.list[name].each do |context| 
          class_eval &context
        end
      else
        raise ArgumentError, "No context by name '#{name}' found."
      end
    end
    alias_method :inherit_context, :use_context

  end

end
