# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'capistrano-coditsu'
  spec.version     = '0.1.0'
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ['Tomasz Pajor']
  spec.email       = %w[tomek@coditsu.io]
  spec.homepage    = 'https://coditsu.io'
  spec.summary     = 'Coditsu integration for Capistrano'
  spec.description = 'Coditsu integration for Capistrano'
  spec.license     = 'Trade secret'

  spec.add_dependency 'capistrano', '>= 3.9'
  spec.add_dependency 'capistrano-bundler'
  spec.add_dependency 'capistrano-rvm'
  spec.add_dependency 'capistrano-rails'
  spec.required_ruby_version = '>= 2.4.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]
end
