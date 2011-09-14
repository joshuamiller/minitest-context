= minitest/context
  
  * Author    : Rob Gleeson <rob@flowof.info>
  * Home      : https://github.com/robgleeson/minitest-context
  * API       : http://rubydoc.info/github/robgleeson/minitest-context/master/frames
  * CI status : http://travis-ci.org/#!/robgleeson/minitest-context

== Description
  
  minitest/context can define contexts that can be used for code reuse in MiniTest specs.
  The idea orginated from the shared_context() and include_context() methods distributed with RSpec.

  MiniTest supports code re-use in your tests already, via a subclass of MiniTest::Spec.
  You might want to look at that option, if you didn't know about it already.

== Examples

  MiniTest::Context.define(:example) do
    before do
      puts "cheeze burgerz!"
    end
  end

  describe SomeClass do
    inherit_context :example
  end

  describe SomeOtherClass do
    inherit_context :example
  end

== License
  
  See LICENSE.txt


