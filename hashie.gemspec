# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashie/version'

Gem::Specification.new do |spec|
  spec.name          = "hashie"
  spec.version       = Hashie::VERSION
  spec.authors       = ["Seliverstov Maxim"]
  spec.email         = ["maxim.web.deveoper@gmail.com"]
  spec.description   = %q{Hashie gem.}
  spec.summary       = %q{Hashie gem.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

end
