# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minitest/context/version"

Gem::Specification.new do |s|
  s.name        = "minitest-context"
  s.version     = MiniTest::Context::VERSION
  s.authors     = ["robgleeson"]
  s.email       = ["rob@flowof.info"]
  s.homepage    = "https://github.com/robgleeson/minitest-context"

  s.summary     = "Defines contexts for code reuse in MiniTest specs that share common expectations."
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency     "minitest", "~> 4"
  s.add_development_dependency "rake"    , "~> 0.9.2"
end
