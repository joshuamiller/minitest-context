= minitest/context
  
  * Author       : Rob Gleeson <rob@flowof.info>
  * Home         : https://github.com/robgleeson/minitest-context
  * API (Stable) : http://rubydoc.info/gems/minitest-context/
  * API (Edge)   : http://rubydoc.info/github/robgleeson/minitest-context/master/frames
  * CI status    : http://travis-ci.org/#!/robgleeson/minitest-context

== Description
  
  minitest/context can define contexts for code reuse in MiniTest specs that share common expectations.
  The idea orginated from the shared_context() and include_context() methods distributed with RSpec.

  MiniTest supports code re-use in MiniTest specs already, via a subclass of MiniTest::Spec.
  You might want to look at that option, if you didn't know about it already.

== Examples

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

== Install

  gem install minitest-context

== License
  
  See LICENSE.txt


