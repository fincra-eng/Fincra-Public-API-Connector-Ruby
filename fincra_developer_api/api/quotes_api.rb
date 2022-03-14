require "uri"

module FincraDeveloperApi
  class QuotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a quote
    # This endpoint is used for generating a quote.\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| sourceCurrency | string | e.g _USD_ required|\n| destinationCurrency | string |  e.g _NGN_ required|\n| amount | string | required|\n| action | string | the values can be either \&quot;_send_\&quot; for conversions and disbursement or \&quot;_receive_\&quot; for collectionsrequired|\n| transactionType | string | the values here can be either _disbursement_ or _collection_ or _conversion_required |\n| business | string | This could be the ID of the business or the ID of a sub-account of the business required|\n| feeBearer | string | required  |\n| paymentDestination | string | See the note below |\n| paymentMethod | string | see the note below |\n| destinationCountry | string | This is the location where the money would be received required |\n| paymentScheme | string | This is the valid payment scheme for the destination currency you want to generate a quote for.Payment scheme is required for USD,EUR and GBP |\n\nNOTE\n\nIf destination currency is either USD,EUR,GBP a payment scheme is required .\n\nThe values of the _paymentDestination_ and _paymentMethod_ are either required or optional depending on the value of the _transactiontype_ field.\n\nWhen the value of the the _transactiontype_ field is _disbursement_, We will then have the below fields as:\n*   paymentDestination required\n*   paymentMethod optional\n\n\nWhen the value of the the _transactiontype_ field is _conversion_, We will then have the below fields as:\n*   paymentDestination optional\n*   paymentMethod optional\n\nWhen the value of the the _transactiontype_ field is _collection_, We will then have the below fields as:\n*   paymentDestination required\n*   paymentMethod required
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getaquote(opts = {})
      getaquote_with_http_info(opts)
      return nil
    end

    # Get a quote
    # This endpoint is used for generating a quote.\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| sourceCurrency | string | e.g _USD_ required|\n| destinationCurrency | string |  e.g _NGN_ required|\n| amount | string | required|\n| action | string | the values can be either \&quot;_send_\&quot; for conversions and disbursement or \&quot;_receive_\&quot; for collectionsrequired|\n| transactionType | string | the values here can be either _disbursement_ or _collection_ or _conversion_required |\n| business | string | This could be the ID of the business or the ID of a sub-account of the business required|\n| feeBearer | string | required  |\n| paymentDestination | string | See the note below |\n| paymentMethod | string | see the note below |\n| destinationCountry | string | This is the location where the money would be received required |\n| paymentScheme | string | This is the valid payment scheme for the destination currency you want to generate a quote for.Payment scheme is required for USD,EUR and GBP |\n\nNOTE\n\nIf destination currency is either USD,EUR,GBP a payment scheme is required .\n\nThe values of the _paymentDestination_ and _paymentMethod_ are either required or optional depending on the value of the _transactiontype_ field.\n\nWhen the value of the the _transactiontype_ field is _disbursement_, We will then have the below fields as:\n*   paymentDestination required\n*   paymentMethod optional\n\n\nWhen the value of the the _transactiontype_ field is _conversion_, We will then have the below fields as:\n*   paymentDestination optional\n*   paymentMethod optional\n\nWhen the value of the the _transactiontype_ field is _collection_, We will then have the below fields as:\n*   paymentDestination required\n*   paymentMethod required
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getaquote_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QuotesApi#getaquote ..."
      end
      
      # resource path
      path = "/quotes/generate".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: QuotesApi#getaquote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




