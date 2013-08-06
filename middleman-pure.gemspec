# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-pure/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-pure"
  spec.version       = Middleman::Pure::VERSION
  spec.authors       = ["yterajima"]
  spec.email         = ["terra@e2esound.com"]
  spec.description   = %q{Pure.css for Middleman}
  spec.summary       = %q{middleman-pure}
  spec.homepage      = "https://github.com/yterajima/middleman-pure"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
