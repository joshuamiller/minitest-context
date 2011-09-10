require 'spec_setup'

describe "Contexts" do
  describe "an inherited context." do
    inherit_context :before_block

    it "should execute a before block and assign an Array to @example." do
      @example.must_be_instance_of(Array)
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
