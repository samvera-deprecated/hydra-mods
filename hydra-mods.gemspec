$:.push File.expand_path("../lib", __FILE__)
# require "hydra-head/version"

Gem::Specification.new do |s|
  s.name = 'hydra-mods'
  s.version = '0.0.4'
  s.platform = Gem::Platform::RUBY
  s.authors     = ["Matt Zumwalt, Bess Sadler, Julie Meloni, Naomi Dushay, Jessie Keck, John Scofield, Justin Coyne & many more.  See https://github.com/projecthydra/hydra-head/contributors"]
  s.email       = ["hydra-tech@googlegroups.com"]
  s.homepage = 'http://projecthydra.org'
  s.summary = "Hydra MODS components split out from hydra-head"
  s.description = "Hydra MODS components split out from hydra-head"

  s.add_dependency 'active-fedora', "~>4.1"
  s.add_development_dependency "rspec"
  s.add_development_dependency "mocha"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "cucumber"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.test_files = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "app/models"]
end
