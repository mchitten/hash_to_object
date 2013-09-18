# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_to_obj/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_to_obj"
  spec.version       = HashToObj::VERSION
  spec.authors       = ["Michael Chittenden"]
  spec.email         = ["mchitten@gmail.com"]
  spec.description   = %q{Converts a Hash into a Class object}
  spec.summary       = %q{Converts a Hash into a Class object}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
