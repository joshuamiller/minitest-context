__OVERVIEW__


| Project         | minitest-spec    
|:----------------|:--------------------------------------------------
| Author          | Rob Gleeson             
| Homepage        | https://github.com/robgleeson/minitest-context
| Documentation   | http://rubydoc.info/gems/minitest-context/frames 


__DESCRIPTION__

  minitest/context can define contexts for code reuse in MiniTest specs that share common expectations.  
  The idea orginated from the `shared_context()` and `include_context()` methods distributed with RSpec.  

  MiniTest supports code re-use in MiniTest specs already, via a subclass of MiniTest::Spec.  
  You might want to look at that option, if you didn't know about it already.  

__EXAMPLES__

    MiniTest::Context.define(:operand) do
      before do
        @operand = 40
      end
    end

    describe "Addition operator" do
      inherit_context :operand
    
      it "should perform addition on the operand." do
        @operand = @operand + 10
        @operand.must_equal(50)
      end
    end

    describe "Subtraction operator" do
      inherit_context :operand

      it "should perform subtraction on the operand." do
        @operand = @operand - 10
        @operand.must_equal(30)
      end
    end

__INSTALL__

  gem install minitest-context

__LICENSE__

  
  See LICENSE.txt


