require 'spec_setup'

describe MiniTest::Context do
  describe "an inherited context." do
    inherit_context :before_block

    it "should execute a before block and assign @example to an array." do
      @example.must_be_instance_of(Array)
    end
  end

  describe "a suite which has not inherited a context." do
    it "should not inherit any state from suites with inherited contexts." do
      @example.must_be_instance_of(NilClass)
    end
  end

  describe "two suites who inherit the same context." do
    inherit_context :before_block
    
    describe "Suite 1" do
      it "should inherit context from the parent suite." do
        @example.must_be_instance_of(Array)
      end
    end

    describe "Suite 2" do
      it "should inherit context from the parent suite." do
        @example.must_be_instance_of(Array)
      end
    end
  end
end
