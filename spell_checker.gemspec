# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spell_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "spell_checker"
  spec.version       = SpellChecker::VERSION
  spec.authors       = ["Austin Fonacier", "Eric Kuecks", "Emily Lutz"]
  spec.email         = ["austin@spokeo.com", "ekuecks@ucla.edu", "emily.lutz@berkeley.edu"]
  spec.summary       = "Spell checker for U.S. cities and states"
  spec.description   = "Spell checker for U.S. cities and states"
  spec.homepage      = "https://github.com/spokeo/SpellChecker"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 3.0.0.beta1'
end
