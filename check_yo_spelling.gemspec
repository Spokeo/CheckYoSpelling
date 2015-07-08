# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'check_yo_spelling/version'

Gem::Specification.new do |spec|
  spec.name          = "check_yo_spelling"
  spec.version       = CheckYoSpelling::VERSION
  spec.authors       = ["Austin Fonacier", "Eric Kuecks", "Emily Lutz"]
  spec.email         = ["austin@spokeo.com", "ekuecks@ucla.edu", "emily.lutz@berkeley.edu"]
  spec.summary       = "Spell checker for U.S. cities and states"
  spec.description   = "Spell checker for U.S. cities and states"
  spec.homepage      = "https://github.com/spokeo/CheckYoSpelling"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'geolookup', '~> 0.5.10'
  spec.add_development_dependency 'levenshtein', '~> 0.2.2'
end
