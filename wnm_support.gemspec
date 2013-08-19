# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wnm_support/version'

Gem::Specification.new do |gem|
  gem.name          = "wnm_support"
  gem.version       = WnmSupport::VERSION
  gem.authors       = ["Miroslav Hettes"]
  gem.email         = ["hettes@webynamieru.sk"]
  gem.description   = %q{Extend core methods in Rails}
  gem.summary       = %q{Extend core methods in Rails}
  gem.homepage      = "https://github.com/mirrec/wnm_support"

  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "activesupport", ">= 3.0"
  gem.add_runtime_dependency "activerecord", ">= 3.0"
  gem.add_runtime_dependency "actionpack", ">= 3.0"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "active_record_no_table"
  gem.add_development_dependency "mysql2"
end
