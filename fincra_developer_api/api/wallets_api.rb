require "uri"

module FincraDeveloperApi
  class WalletsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all the wallets for a Business
    # This endpoints lists all wallets belonging to a business.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getallthewalletsfora_business(business_id, opts = {})
      getallthewalletsfora_business_with_http_info(business_id, opts)
      return nil
    end

    # Get all the wallets for a Business
    # This endpoints lists all wallets belonging to a business.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getallthewalletsfora_business_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletsApi#getallthewalletsfora_business ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling getallthewalletsfora_business" if business_id.nil?
      
      # resource path
      path = "/wallets".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'businessID'] = business_id

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
        @api_client.config.logger.debug "API called: WalletsApi#getallthewalletsfora_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a wallet
    # This endpoint provides the information regarding a specific wallet.
    # @param wallet_id The ID of the wallet
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getawallet(wallet_id, opts = {})
      getawallet_with_http_info(wallet_id, opts)
      return nil
    end

    # Get a wallet
    # This endpoint provides the information regarding a specific wallet.
    # @param wallet_id The ID of the wallet
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getawallet_with_http_info(wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletsApi#getawallet ..."
      end
      
      # verify the required parameter 'wallet_id' is set
      fail "Missing the required parameter 'wallet_id' when calling getawallet" if wallet_id.nil?
      
      # resource path
      path = "/wallets/{walletID}".sub('{format}','json').sub('{' + 'walletID' + '}', wallet_id.to_s)

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
        @api_client.config.logger.debug "API called: WalletsApi#getawallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




