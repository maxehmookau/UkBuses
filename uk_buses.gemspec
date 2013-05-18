# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uk_buses/version'

Gem::Specification.new do |spec|
  spec.name          = "uk_buses"
  spec.version       = UkBuses::VERSION
  spec.authors       = ["Max Woolf"]
  spec.email         = ["maximus@zingysaturn.co.uk"]
  spec.description   = %q{Web scraper for all UK bus data}
  spec.summary       = %q{ Grab real-time bus info for all UK buses using a groovy Ruby DSL }
  spec.homepage      = "http://maxehmookau.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "nokogiri"
end
