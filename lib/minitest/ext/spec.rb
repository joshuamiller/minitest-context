class MiniTest::Spec
  
  class << self

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
