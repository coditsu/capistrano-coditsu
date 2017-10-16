# frozen_string_literal: true

require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/plugin'

# Capistrano stuff
module Capistrano
  # Karafka Capistrano integration
  class Coditsu < Capistrano::Plugin
    # Names of files that store capistrano procedures
    CAP_FILES = %w[bundler].freeze

    # Default values for Karafka settings
    def set_defaults
      set :bundle_clean_options, '--force'
    end
  end
end

# rubocop:disable Security/Eval
Capistrano::Coditsu::CAP_FILES.each do |cap_file|
  eval File.open(File.expand_path("../tasks/#{cap_file}.cap", __FILE__), 'r').read
end
# rubocop:enable Security/Eval
