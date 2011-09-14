= minitest/context
  
  * Author    : Rob Gleeson <rob@flowof.info>
  * Home      : https://github.com/robgleeson/minitest-context
  * API       : http://rubydoc.info/github/robgleeson/minitest-context/master/frames
  * CI status : http://travis-ci.org/#!/robgleeson/minitest-context

== Description
  
  minitest/context can define contexts for code reuse in MiniTest specs that share common expectations.
  The idea orginated from the shared_context() and include_context() methods distributed with RSpec.

  MiniTest supports code re-use in MiniTest specs already, via a subclass of MiniTest::Spec.
  You might want to look at that option, if you didn't know about it already.

== Examples

  MiniTest::Context.define(:example) do
    before do
      @answer = 42
    end
  end

  describe SomeClass do
    inherit_context :example

    it "should subtract the answer by 12." do
      @answer -= 12
      @answer.must_equal(30)
    end
  end

  describe SomeOtherClass do
    inherit_context :example
  
    it "should subtract the answer by 22." do
      @answer -= 22
      @answer.must_equal(20)
    end
  end

== License
  
  See LICENSE.txt


