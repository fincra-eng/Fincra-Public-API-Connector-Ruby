require "uri"

module FincraDeveloperApi
  class ResolveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Resolve Bank Account
    # This endpoint resolves bank account information based the account number and bank code provided. This is only valid for Nigerian bank accounts
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resolve_bank_account(opts = {})
      resolve_bank_account_with_http_info(opts)
      return nil
    end

    # Resolve Bank Account
    # This endpoint resolves bank account information based the account number and bank code provided. This is only valid for Nigerian bank accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def resolve_bank_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResolveApi#resolve_bank_account ..."
      end
      
      # resource path
      path = "/resolve".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResolveApi#resolve_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




