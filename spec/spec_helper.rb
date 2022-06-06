# frozen_string_literal: true

require 'rspec/retry'
require 'switchs'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # show retry status in spec process
  config.verbose_retry = true

  # show exception that triggers a retry if verbose_retry is set to true
  config.display_try_failure_messages = true
end
