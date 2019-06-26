# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'capistrano-coditsu'
  spec.version     = '0.1.1'
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ['Tomasz Pajor']
  spec.email       = %w[contact@coditsu.io]
  spec.homepage    = 'https://coditsu.io'
  spec.summary     = 'Coditsu integration for Capistrano'
  spec.description = 'Coditsu integration for Capistrano'
  spec.license     = 'LGPL-3.0'

  spec.add_dependency 'bcrypt_pbkdf'
  spec.add_dependency 'capistrano', '>= 3.9'
  spec.add_dependency 'capistrano-bundler'
  # Enable when Karafka 1.3 is released
  # spec.add_dependency 'capistrano-karafka'
  spec.add_dependency 'capistrano-rails'
  spec.add_dependency 'capistrano-rbenv'
  spec.add_dependency 'capistrano-sidekiq'
  spec.add_dependency 'capistrano3-puma', '>= 3.1.1'
  spec.add_dependency 'ed25519'
  spec.add_dependency 'envlogic'
  spec.add_dependency 'net-ssh'
  spec.required_ruby_version = '>= 2.6.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]
end
