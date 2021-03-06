require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'

require_relative '../services/contacts_services.rb'
require_relative '../services/criar_services.rb'

RSpec.configure do |config|
  include Contacts
  include Create
  config.color = true
  config.formatter = :documentation

  config.expect_with :rspec do |expectations|
   
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
   
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
