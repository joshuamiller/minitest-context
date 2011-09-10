require 'spec_setup'

describe MiniTest::Context do
  describe "an inherited context." do
    inherit_context :before_block

    it "should execute a before block and assign @example to an array." do
      @example.must_be_instance_of(Array)
    end
  end
end

