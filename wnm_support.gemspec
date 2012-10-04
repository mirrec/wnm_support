# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wnm_support/version'

Gem::Specification.new do |gem|
  gem.name          = "wnm_support"
  gem.version       = WnmSupport::VERSION
  gem.authors       = ["Miroslav Hettes"]
  gem.email         = ["mirrec@gmail.com"]
  gem.description   = %q{Extend core methods in Rails}
  gem.summary       = %q{Extend core method in Rails}
  gem.homepage      = "https://bitbucket.org/mirrec/wnm_support"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "activesupport"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
end
