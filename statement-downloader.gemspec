# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statement/downloader/version'

Gem::Specification.new do |spec|
  spec.name          = "statement-downloader"
  spec.version       = Statement::Downloader::VERSION
  spec.authors       = ["Nathan Lee"]
  spec.email         = ["nathan@globalphobia.com"]
  spec.summary       = %q{Downloads account statements for your online accounts}
  spec.description   = %q{Downloads account statements for your online accounts}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
end
