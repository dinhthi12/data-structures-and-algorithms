# spec/spec_helper.rb

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/' # Loại trừ thư mục spec khỏi báo cáo
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Dừng test sau khi gặp lỗi đầu tiên
  config.fail_fast = false

  # Mặc định RSpec dùng random để sắp xếp các test
  config.order = :random
end
