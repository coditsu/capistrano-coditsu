# frozen_string_literal: true

require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/rails'
require 'capistrano/plugin'

# Capistrano stuff
module Capistrano
  # Karafka Capistrano integration
  class Coditsu < Capistrano::Plugin
    # Names of files that store capistrano procedures
    CAP_FILES = %w[bundler].freeze

    # Deploy hooks registration
    # def register_hooks
    #   before 'bundler:install', 'bundler:gem_install'
    # end
  end
end

Capistrano::Coditsu::CAP_FILES.each do |cap_file|
  eval File.open(File.expand_path("../tasks/#{cap_file}.cap", __FILE__), 'r').read
end
