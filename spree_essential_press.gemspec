# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spree_essential_press/version"

Gem::Specification.new do |s|
  s.name        = "spree_essential_press"
  s.version     = SpreeEssentialPress::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Spencer Steffen"]
  s.email       = ["spencer@citrusme.com"]
  s.homepage    = "https://github.com/citrus/spree_essential_press"
  s.summary     = %q{Spree Essential Press is a Spree extension for featuring your press exposure online.}
  s.description = %q{Spree Essential Press was designed with spree_essentials in mind but can be used without.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
 
  # Spree
  s.add_dependency('spree_core', '>= 0.70.0')
  
  # Development
  s.add_development_dependency('spree_essentials',   '>= 0.3.0')
  s.add_development_dependency('dummier',            '>= 0.2.4')
	s.add_development_dependency('shoulda',            '>= 3.0.0.beta2')
	s.add_development_dependency('factory_girl',       '>= 2.3.2')
	s.add_development_dependency('capybara',           '>= 1.1.2')
	s.add_development_dependency('selenium-webdriver', '>= 2.15.0')
  s.add_development_dependency('sqlite3',            '>= 1.3.3')
  
end
