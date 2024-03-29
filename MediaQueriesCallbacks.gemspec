# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'MediaQueriesCallbacks/version'

Gem::Specification.new do |gem|
  gem.name          = 'media-queries-callbacks'
  gem.version       = MediaQueriesCallbacks::VERSION
  gem.authors       = ['Vik Ewoods']
  gem.email         = ['me@vikewoods.com']
  gem.description   = %q{Awesome Media Queries in JavaScript}
  gem.summary       = %q{Media Queries Callbacks is a lightweight, pure javascript library (with no dependencies) for programmatically responding to media queries.}
  gem.homepage      = 'http://vikewoods.com/rails/media-queries'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.add_dependency "railties", ">= 3.1.0"
  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rails",   ">= 3.1.0"
end
