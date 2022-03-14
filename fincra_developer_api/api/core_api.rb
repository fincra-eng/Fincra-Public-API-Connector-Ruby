require "uri"

module FincraDeveloperApi
  class CoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Bank code
    # This endpoint provides a list of the banks and mobile money wallet providers with information like name, code and the list of branches and branch codes per bank based on a specified currency.\n\nThe **code** field in the below sample refers to the bank code for your bank account or the code of your mobile money provider. \n\n```json\n{\n {\n   \&quot;id\&quot;: 147,\n   \&quot;code\&quot;: \&quot;GH010100\&quot;,\n   \&quot;name\&quot;: \&quot;BANK OF GHANA\&quot;,\n   \&quot;isMobileVerified\&quot;: null,\n   \&quot;branches\&quot;: [\n      {\n        \&quot;id\&quot;: 1,\n        \&quot;branchCode\&quot;: \&quot;GH010101\&quot;,\n        \&quot;branchName\&quot;: \&quot;BANK OF GHANA-ACCRA\&quot;,\n        \&quot;swiftCode\&quot;: \&quot;BAGHGHAC\&quot;,\n        \&quot;bic\&quot;: \&quot;BAGHGHAC\&quot;\n       }]\n },\n {\n  \&quot;id\&quot;: 79,\n  \&quot;code\&quot;: \&quot;AIRTEL\&quot;,\n  \&quot;name\&quot;: \&quot;Airtel\&quot;,\n  \&quot;isMobileVerified\&quot;: true,\n  \&quot;branches\&quot;: null\n }\n}\n```
    # @param currency e.g NGN, GHS, KES
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_bankcode(currency, opts = {})
      get_bankcode_with_http_info(currency, opts)
      return nil
    end

    # Get Bank code
    # This endpoint provides a list of the banks and mobile money wallet providers with information like name, code and the list of branches and branch codes per bank based on a specified currency.\n\nThe **code** field in the below sample refers to the bank code for your bank account or the code of your mobile money provider. \n\n```json\n{\n {\n   \&quot;id\&quot;: 147,\n   \&quot;code\&quot;: \&quot;GH010100\&quot;,\n   \&quot;name\&quot;: \&quot;BANK OF GHANA\&quot;,\n   \&quot;isMobileVerified\&quot;: null,\n   \&quot;branches\&quot;: [\n      {\n        \&quot;id\&quot;: 1,\n        \&quot;branchCode\&quot;: \&quot;GH010101\&quot;,\n        \&quot;branchName\&quot;: \&quot;BANK OF GHANA-ACCRA\&quot;,\n        \&quot;swiftCode\&quot;: \&quot;BAGHGHAC\&quot;,\n        \&quot;bic\&quot;: \&quot;BAGHGHAC\&quot;\n       }]\n },\n {\n  \&quot;id\&quot;: 79,\n  \&quot;code\&quot;: \&quot;AIRTEL\&quot;,\n  \&quot;name\&quot;: \&quot;Airtel\&quot;,\n  \&quot;isMobileVerified\&quot;: true,\n  \&quot;branches\&quot;: null\n }\n}\n```
    # @param currency e.g NGN, GHS, KES
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_bankcode_with_http_info(currency, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#get_bankcode ..."
      end
      
      # verify the required parameter 'currency' is set
      fail "Missing the required parameter 'currency' when calling get_bankcode" if currency.nil?
      
      # resource path
      path = "/core/banks".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'currency'] = currency

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
        @api_client.config.logger.debug "API called: CoreApi#get_bankcode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get branch Code
    # This endpoint provides a list of the branches for a bank and helps you get your branch code. To get a branch Code: \n+ Make a request to the endpoint that provides bank code with your desired currency \n+ Find your bank in the list returned.\n+ Check the id field of your bank information for your branch\n+ use the id field to make a request to this endpoint to get the list of branches for your bank\n+ Check the **branchCode** field of your branch information for the value of your branch code
    # @param bank_id Id of the bank
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getbranch_code(bank_id, opts = {})
      getbranch_code_with_http_info(bank_id, opts)
      return nil
    end

    # Get branch Code
    # This endpoint provides a list of the branches for a bank and helps you get your branch code. To get a branch Code: \n+ Make a request to the endpoint that provides bank code with your desired currency \n+ Find your bank in the list returned.\n+ Check the id field of your bank information for your branch\n+ use the id field to make a request to this endpoint to get the list of branches for your bank\n+ Check the **branchCode** field of your branch information for the value of your branch code
    # @param bank_id Id of the bank
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getbranch_code_with_http_info(bank_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#getbranch_code ..."
      end
      
      # verify the required parameter 'bank_id' is set
      fail "Missing the required parameter 'bank_id' when calling getbranch_code" if bank_id.nil?
      
      # resource path
      path = "/core/banks/{bankId}/branches".sub('{format}','json').sub('{' + 'bankId' + '}', bank_id.to_s)

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
        @api_client.config.logger.debug "API called: CoreApi#getbranch_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a disbursement transaction by customer reference
    # This endpoint provides the details of a disbursement transaction through the use of a customer reference.
    # @param business The ID of the business
    # @param customer_reference The reference of the customer/merchant
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getadisbursementtransactionbycustomerreference(business, customer_reference, opts = {})
      getadisbursementtransactionbycustomerreference_with_http_info(business, customer_reference, opts)
      return nil
    end

    # Get a disbursement transaction by customer reference
    # This endpoint provides the details of a disbursement transaction through the use of a customer reference.
    # @param business The ID of the business
    # @param customer_reference The reference of the customer/merchant
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getadisbursementtransactionbycustomerreference_with_http_info(business, customer_reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#getadisbursementtransactionbycustomerreference ..."
      end
      
      # verify the required parameter 'business' is set
      fail "Missing the required parameter 'business' when calling getadisbursementtransactionbycustomerreference" if business.nil?
      
      # verify the required parameter 'customer_reference' is set
      fail "Missing the required parameter 'customer_reference' when calling getadisbursementtransactionbycustomerreference" if customer_reference.nil?
      
      # resource path
      path = "/core/transactions/disbursements/by-customer-reference".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'business'] = business
      query_params[:'customerReference'] = customer_reference

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
        @api_client.config.logger.debug "API called: CoreApi#getadisbursementtransactionbycustomerreference\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a disbursement transaction by reference
    # This endpoint provides the details of a disbursement transaction through the use of its reference.
    # @param business The ID of business
    # @param reference The reference of the transaction
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getadisbursementtransactionbyreference(business, reference, opts = {})
      getadisbursementtransactionbyreference_with_http_info(business, reference, opts)
      return nil
    end

    # Get a disbursement transaction by reference
    # This endpoint provides the details of a disbursement transaction through the use of its reference.
    # @param business The ID of business
    # @param reference The reference of the transaction
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getadisbursementtransactionbyreference_with_http_info(business, reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#getadisbursementtransactionbyreference ..."
      end
      
      # verify the required parameter 'business' is set
      fail "Missing the required parameter 'business' when calling getadisbursementtransactionbyreference" if business.nil?
      
      # verify the required parameter 'reference' is set
      fail "Missing the required parameter 'reference' when calling getadisbursementtransactionbyreference" if reference.nil?
      
      # resource path
      path = "/core/transactions/disbursements/by-reference".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'business'] = business
      query_params[:'reference'] = reference

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
        @api_client.config.logger.debug "API called: CoreApi#getadisbursementtransactionbyreference\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the transactions for a Business
    # This endpoint provides a list of all the transactions for a business.\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|\n| from | string| Specify start date with format \&quot;YYYY-mm-dd\&quot;  optional|\n| to | string| Specify end date with format \&quot;YYYY-mm-dd\&quot; optional|
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getthetransactionsfora_business(business_id, opts = {})
      getthetransactionsfora_business_with_http_info(business_id, opts)
      return nil
    end

    # Get the transactions for a Business
    # This endpoint provides a list of all the transactions for a business.\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|\n| from | string| Specify start date with format \&quot;YYYY-mm-dd\&quot;  optional|\n| to | string| Specify end date with format \&quot;YYYY-mm-dd\&quot; optional|
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getthetransactionsfora_business_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#getthetransactionsfora_business ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling getthetransactionsfora_business" if business_id.nil?
      
      # resource path
      path = "/core/transactions/search/business/{businessID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: CoreApi#getthetransactionsfora_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the transactions for the sub-accounts of a Business
    # This provides a list of all the transactions for the sub-accounts of a Business.\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|\n| from | string| Specify start date with format \&quot;YYYY-mm-dd\&quot;  optional|\n| to | string| Specify end date with format \&quot;YYYY-mm-dd\&quot; optional|
    # @param business_id The is the ID of a business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getthetransactionsforthesub_accountsofabusiness(business_id, opts = {})
      getthetransactionsforthesub_accountsofabusiness_with_http_info(business_id, opts)
      return nil
    end

    # Get the transactions for the sub-accounts of a Business
    # This provides a list of all the transactions for the sub-accounts of a Business.\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|\n| from | string| Specify start date with format \&quot;YYYY-mm-dd\&quot;  optional|\n| to | string| Specify end date with format \&quot;YYYY-mm-dd\&quot; optional|
    # @param business_id The is the ID of a business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getthetransactionsforthesub_accountsofabusiness_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#getthetransactionsforthesub_accountsofabusiness ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling getthetransactionsforthesub_accountsofabusiness" if business_id.nil?
      
      # resource path
      path = "/core/transactions/search/business/{businessID}/sub-accounts".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: CoreApi#getthetransactionsforthesub_accountsofabusiness\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a transaction for a business
    # This endpoint provides the details of a transaction through the use of its ID.
    # @param transaction_id The reference or ID of the transaction
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getatransactionforabusiness(transaction_id, opts = {})
      getatransactionforabusiness_with_http_info(transaction_id, opts)
      return nil
    end

    # Get a transaction for a business
    # This endpoint provides the details of a transaction through the use of its ID.
    # @param transaction_id The reference or ID of the transaction
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getatransactionforabusiness_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#getatransactionforabusiness ..."
      end
      
      # verify the required parameter 'transaction_id' is set
      fail "Missing the required parameter 'transaction_id' when calling getatransactionforabusiness" if transaction_id.nil?
      
      # resource path
      path = "/core/transactions/{transactionID}".sub('{format}','json').sub('{' + 'transactionID' + '}', transaction_id.to_s)

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
        @api_client.config.logger.debug "API called: CoreApi#getatransactionforabusiness\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




