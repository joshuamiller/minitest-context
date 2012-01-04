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

  def self.inherit_context name
    use_context name
  end

end
