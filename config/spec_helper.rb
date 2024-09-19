# frozen_string_literal: true

require 'rspec'            # Load RSpec for writing and running tests
require 'json'             # Load JSON for handling JSON data in tests
require 'simplecov'        # Load SimpleCov for code coverage analysis
require 'simplecov-rcov'   # Load SimpleCov-Rcov for RCov formatter

# Start SimpleCov for code coverage analysis
SimpleCov.start do
  add_filter '/spec/'      # Exclude files in the spec directory from coverage analysis
  minimum_coverage 90     # Set the minimum coverage percentage to 90%
  formatter SimpleCov::Formatter::Rcov  # Use RCov formatter for coverage reports
end

RSpec.configure do |config|
  # Configure RSpec's expectation syntax
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # Configure RSpec's mocking framework
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true # Ensure partial doubles are verified
  end

  # Run only tests tagged with :focus, or all tests if none are tagged
  config.filter_run_when_matching :focus

  # Stop running tests after a failure if RSPEC_FAIL_FAST environment variable is set
  config.fail_fast = true if ENV['RSPEC_FAIL_FAST']

  # Show the 10 slowest examples to help identify performance issues
  config.profile_examples = 10

  # Randomize the order in which tests are run to expose order dependencies
  config.order = :random

  # Seed the random number generator to reproduce test failures
  Kernel.srand config.seed

  # Disable monkey patching of core Ruby objects to avoid potential issues
  config.disable_monkey_patching!
end
