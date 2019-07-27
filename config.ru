# frozen_string_literal: true

require_relative 'boot'
require 'elias/api/application'
require 'elias/settings'

run Elias::API::Application
