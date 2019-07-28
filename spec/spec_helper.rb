# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require_relative '../boot'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

RSpec.configure do |config|
  config.when_first_matching_example_defined :db do
    require 'database_helper'
  end
end
