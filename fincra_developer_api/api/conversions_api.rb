require "uri"

module FincraDeveloperApi
  class ConversionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all conversions
    # This endpoint provides a list of all conversions performed by a business.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getallconversions(business_id, opts = {})
      getallconversions_with_http_info(business_id, opts)
      return nil
    end

    # Get all conversions
    # This endpoint provides a list of all conversions performed by a business.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getallconversions_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversionsApi#getallconversions ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling getallconversions" if business_id.nil?
      
      # resource path
      path = "/conversions/business/{businessId}".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: ConversionsApi#getallconversions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate a conversion
    # This endpoint provides information on the conversion rate between two currencies e.g NGN to USD\n\n\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| business | string | This could be the ID of the business or the ID of a sub-account of the businessRequired |\n| quoteReference | string | To get a quote reference, you will need to call the generate quote endpoint Required |
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def initiateaconversion(opts = {})
      initiateaconversion_with_http_info(opts)
      return nil
    end

    # Initiate a conversion
    # This endpoint provides information on the conversion rate between two currencies e.g NGN to USD\n\n\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| business | string | This could be the ID of the business or the ID of a sub-account of the businessRequired |\n| quoteReference | string | To get a quote reference, you will need to call the generate quote endpoint Required |
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def initiateaconversion_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversionsApi#initiateaconversion ..."
      end
      
      # resource path
      path = "/conversions/initiate".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsApi#initiateaconversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a conversion
    # This endpoint fetches a specific conversion performed by a business.
    # @param conversion_id The ID of the conversion
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getaconversion(conversion_id, opts = {})
      getaconversion_with_http_info(conversion_id, opts)
      return nil
    end

    # Get a conversion
    # This endpoint fetches a specific conversion performed by a business.
    # @param conversion_id The ID of the conversion
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getaconversion_with_http_info(conversion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversionsApi#getaconversion ..."
      end
      
      # verify the required parameter 'conversion_id' is set
      fail "Missing the required parameter 'conversion_id' when calling getaconversion" if conversion_id.nil?
      
      # resource path
      path = "/conversions/{conversionId}".sub('{format}','json').sub('{' + 'conversionId' + '}', conversion_id.to_s)

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
        @api_client.config.logger.debug "API called: ConversionsApi#getaconversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




