# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'formvalidator/lite/version'

Gem::Specification.new do |spec|
  spec.name          = "formvalidator-lite"
  spec.version       = FormValidator::Lite::VERSION
  spec.authors       = ["ohta-nobuyuki"]
  spec.email         = ["ohta-nobuyuki@kayac.com"]
  spec.summary       = %q{very lite and fast validation library for ruby (ruby port from https://github.com/tokuhirom/FormValidator-Lite)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
