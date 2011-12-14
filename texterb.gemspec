# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "texterb/version"

Gem::Specification.new do |s|
  s.name        = "texterb"
  s.version     = Texterb::VERSION.dup
  s.platform    = Gem::Platform::RUBY  
  s.summary     = "Multipart templates made easy with Textile + ERb"
  s.email       = "roberto@vasquez-angel.de"
  s.homepage    = "http://github.com/robotex/texterb"
  s.description = "Multipart templates made easy with Textile + ERb"
  s.authors     = ['Roberto Vasquez Angel']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "RedCloth"
end
