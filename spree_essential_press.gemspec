# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spree_essential_press/version"

Gem::Specification.new do |s|
  s.name        = "spree_essential_press"
  s.version     = SpreeEssentialPress::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Spencer Steffen"]
  s.email       = ["spencer@citrusme.com"]
  s.homepage    = "http://github.com/citrus/spree_essential_press"
  s.summary     = %q{Spree Essential Press is a Spree extension for featuring your press exposure online.}
  s.description = %q{Spree Essential Press was designed with spree_essentials in mind but can be used without.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
 
  # Spree
  s.add_dependency('spree_core', '>= 0.30.1')
  s.add_dependency('spree_auth', '>= 0.30.1')
  
  # Pre 0.50.0
  s.add_dependency('meta_search', '>= 1.0.1')
     
  # Development
	s.add_development_dependency('shoulda',            '>= 2.11.3')
	s.add_development_dependency('factory_girl',       '>= 2.0.0.beta2')
	s.add_development_dependency('cucumber',           '>= 0.10.2')
	s.add_development_dependency('capybara',           '>= 0.4.1')
	s.add_development_dependency('selenium-webdriver', '>= 0.1.3')
  s.add_development_dependency('sqlite3',            '>= 1.3.3')
  s.add_development_dependency('faker',              '>= 0.9.5')
  s.add_development_dependency('spork',              '>= 0.9.0.rc5')
  s.add_development_dependency('spork-testunit',     '>= 0.0.5')
  
end