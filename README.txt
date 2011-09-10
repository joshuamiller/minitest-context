= minitest/context

* author : Rob Gleeson <rob@flowof.info>
* home   : http://github.com/robgleeson/minitest-context

== Description

minitest/context allows you to define contexts that you can use for code reuse in your tests.
The idea orginated from shared_context() and include_context() methods distributed with RSpec.

MiniTest supports code re-use in your tests already, via a subclass of MiniTest::Spec.
You might want to look at that option, if you didn't know about it already.

== Examples

  MiniTest::Context.define(:example) do
    before do
      puts "cheeze burgerz!"
    end
  end

  describe SomeClass do
    include_context :example
  end

  describe SomeOtherClass do
    include_context :example
  end

== License

See LICENSE.txt


