# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wordfreq/version'

Gem::Specification.new do |gem|
  gem.name          = "wordfreq"
  gem.version       = Wordfreq::VERSION
  gem.authors       = ["Tobi Lehman"]
  gem.email         = ["tobi.lehman@gmail.com"]
  gem.description   = %q{a command-line word frequency calculator}
  gem.summary       = %q{what even is a summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec|features)/})
  gem.require_paths = ["lib"]
end
