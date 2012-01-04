__OVERVIEW__


| Project         | minitest-context    
|:----------------|:--------------------------------------------------
| Homepage        | https://github.com/robgleeson/minitest-context
| Documentation   | http://rubydoc.info/gems/minitest-context/frames 
| Author          | Rob Gleeson             


__DESCRIPTION__

  minitest-context can be used to reuse code in minitest specs that share common expectations.  
  The idea orginated from the `shared_context()` and `include_context()` methods distributed with RSpec.  

  minitest supports code re-use in minitest specs already, via a subclass of MiniTest::Spec.  
  You might want to look at that option, if you didn't know about it already.  

__EXAMPLES__

    MiniTest::Context.define(:operand) do
      before do
        @operand = 40
      end
    end

    describe "Addition operator" do
      use_context :operand
    
      it "must perform addition on the operand." do
        result = @operand + 10
        result.must_equal(50)
      end
    end

    describe "Subtraction operator" do
      use_context :operand

      it "must perform subtraction on the operand." do
        result = @operand - 10
        result.must_equal(30)
      end
    end

__INSTALL__

  gem install minitest-context

__LICENSE__

  
  See LICENSE.txt


