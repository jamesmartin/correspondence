# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'correspondence/version'

Gem::Specification.new do |spec|
  spec.name          = "correspondence"
  spec.version       = Correspondence::VERSION
  spec.authors       = ["James Martin"]
  spec.email         = ["correspondence@jmrtn.com"]
  spec.description   = %q{A Sinatra application that servers readable letters.}
  spec.summary       = %q{Letters that I have written}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "sinatra", "1.4.4"
  spec.add_dependency "sinatra-asset-pipeline", "0.3.3"
  spec.add_dependency "haml", "4.0.5"
  spec.add_dependency "redcarpet"
end
