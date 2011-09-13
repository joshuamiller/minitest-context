= minitest/context
  
  * Author : Rob Gleeson <rob@flowof.info>
  * Home   : https://github.com/robgleeson/minitest-context
  * API    : http://rubydoc.info/github/robgleeson/minitest-context/master

== Description
  
  minitest/context allows you to define contexts that you can use for code reuse in your tests.
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


