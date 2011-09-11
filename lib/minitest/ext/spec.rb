class MiniTest::Spec
  class << self 
    def inherit_context name
      if MiniTest::Context.list.has_key?(name) 
        class_eval &MiniTest::Context.list[name]
      else
        raise ArgumentError, "No context with #{name} found."
      end
    end
  end
end

