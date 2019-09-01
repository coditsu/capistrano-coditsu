# frozen_string_literal: true

require 'capistrano/bundler'
require 'capistrano/plugin'
require 'capistrano/rbenv'

# Capistrano stuff
module Capistrano
  # Karafka Capistrano integration
  class Coditsu < Capistrano::Plugin
    # Names of files that store capistrano procedures
    CAP_FILES = %w[deploy puma sidekiq].freeze

    # Default values for Karafka settings
    def set_defaults
      set :bundle_clean_options, '--force'
      set :puma_default_hooks, false
      set :sidekiq_default_hooks, false
    end
  end
end

# rubocop:disable Security/Eval
Capistrano::Coditsu::CAP_FILES.each do |cap_file|
  eval File.open(File.expand_path("../tasks/#{cap_file}.cap", __FILE__), 'r').read
end

before 'deploy:starting', :check_hooks do
  invoke 'puma:add_default_hooks' if fetch(:puma_default_hooks)
  invoke 'sidekiq:add_default_hooks' if fetch(:sidekiq_default_hooks)
end

# rubocop:enable Security/Eval
