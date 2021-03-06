# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'md/version'

Gem::Specification.new do |spec|
  spec.name          = "md"
  spec.version       = Md::VERSION
  spec.authors       = ["Jim Neath"]
  spec.email         = ["jimneath@googlemail.com"]
  spec.description   = %q{md: helping to diagnose issues with instances before they die}
  spec.summary       = %q{md}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
