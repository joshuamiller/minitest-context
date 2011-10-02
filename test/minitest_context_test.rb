require File.expand_path("setup.rb", File.dirname(__FILE__))

describe "Contexts" do
  describe "An inherited context." do
    inherit_context :before_block

    it "must assign an Array to @example." do
      @example.must_be_instance_of(Array)
    end
  end

  describe "two suites who inherit the same context." do
    inherit_context :before_block
    
    describe "Suite 1" do
      it "must inherit the context from the parent suite." do
        @example.must_be_instance_of(Array)
      end
    end

    describe "Suite 2" do
      it "must inherit the context from the parent suite." do
        @example.must_be_instance_of(Array)
      end
    end
  end

  describe "A stacked context." do
    inherit_context :stacked_context

    it "must inherit all stacked contexts." do
      @number.must_equal(2)
    end
  end
end

describe "MiniTest::Context.define" do
  it "must raise an ArgumentError when no block is recieved." do
    proc { MiniTest::Context.define(:fail) }.must_raise(ArgumentError)
  end
end

describe "MiniTest::Spec.inherit_context" do
  it "must raise an ArgumentError when no context by given name can be found." do
    proc { MiniTest::Spec.inherit_context(:fail) }.must_raise(ArgumentError) 
  end
end
