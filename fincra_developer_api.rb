# Common files
require 'fincra_developer_api/api_client'
require 'fincra_developer_api/api_error'
require 'fincra_developer_api/version'
require 'fincra_developer_api/configuration'

# Models

# APIs
require 'fincra_developer_api/api/conversions_api'
require 'fincra_developer_api/api/disbursements_api'
require 'fincra_developer_api/api/core_api'
require 'fincra_developer_api/api/profile_api'
require 'fincra_developer_api/api/quotes_api'
require 'fincra_developer_api/api/wallets_api'
require 'fincra_developer_api/api/resolve_api'

module FincraDeveloperApi
  class << self
    # Customize default settings for the SDK using block.
    #   FincraDeveloperApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
