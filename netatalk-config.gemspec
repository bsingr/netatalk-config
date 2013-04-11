# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netatalk-config/version'

Gem::Specification.new do |gem|
  gem.name          = "netatalk-config"
  gem.version       = NetatalkConfig::VERSION
  gem.authors       = ["Jens Bissinger"]
  gem.email         = ["mail@jens-bissinger.de"]
  gem.description   = %q{netatalk configuration using ruby}
  gem.summary       = %q{e.g. for generating afp.conf}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rspec"
  gem.add_development_dependency "guard-rspec"
end
