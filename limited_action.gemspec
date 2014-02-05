# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'limited_action/version'

Gem::Specification.new do |spec|
  spec.name          = "limited_action"
  spec.version       = LimitedAction::VERSION
  spec.authors       = ["Mitsutaka Mimura"]
  spec.email         = ["takkanm@gmail.com"]
  spec.description   = %q{define action only run limited condition}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/takkanm/limited_action"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
