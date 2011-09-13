class MiniTest::Spec
  
  class << self 

    # Evaluates a context by _name_ in the scope of a MiniTest::Spec subclass.
    #
    # @param [Symbol] name
    #   The name of a context which has been defined by {MiniTest::Context.define define}.
    #
    # @raise [ArgumentError]
    #   Raises an ArgumentError if a context by _name_ does not exist.
    #
    # @return [void] 
    def inherit_context name
      if MiniTest::Context.list.has_key?(name) 
        class_eval &MiniTest::Context.list[name]
      else
        raise ArgumentError, "No context with #{name} found."
      end
    end
  end

end
