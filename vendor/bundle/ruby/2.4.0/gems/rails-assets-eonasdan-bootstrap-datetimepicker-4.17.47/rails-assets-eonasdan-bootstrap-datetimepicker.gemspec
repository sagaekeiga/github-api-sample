# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-eonasdan-bootstrap-datetimepicker/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-eonasdan-bootstrap-datetimepicker"
  spec.version       = RailsAssetsEonasdanBootstrapDatetimepicker::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "bootstrap3 datetimepicker"
  spec.summary       = "bootstrap3 datetimepicker"
  spec.homepage      = "https://github.com/Eonasdan/bootstrap-datetimepicker"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", ">= 1.8.3"
  spec.add_dependency "rails-assets-moment", ">= 2.10.5"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
