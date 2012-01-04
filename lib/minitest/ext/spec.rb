class MiniTest::Spec
  
  def self.use_context name
    if MiniTest::Context.list.has_key?(name) 
      MiniTest::Context.list[name].each do |block| 
        class_eval &block
      end
    else
      raise ArgumentError, "No context by name '#{name}' found."
    end
  end
  alias_method :inherit_context, :use_context

end
