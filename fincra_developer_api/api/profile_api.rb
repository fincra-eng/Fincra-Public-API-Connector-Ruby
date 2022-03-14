require "uri"

module FincraDeveloperApi
  class ProfileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get the Beneficiaries for a business
    # This endpoint provides the ability to retrieve a list of beneficiaries attached to a business. \n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getthe_beneficiariesforabusiness(business_id, opts = {})
      getthe_beneficiariesforabusiness_with_http_info(business_id, opts)
      return nil
    end

    # Get the Beneficiaries for a business
    # This endpoint provides the ability to retrieve a list of beneficiaries attached to a business. \n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getthe_beneficiariesforabusiness_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#getthe_beneficiariesforabusiness ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling getthe_beneficiariesforabusiness" if business_id.nil?
      
      # resource path
      path = "/profile/beneficiaries/business/{businessID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#getthe_beneficiariesforabusiness\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Beneficiary
    # This endpoint is used for creating a Beneficiary.  \n\n\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| firstName | string | required|\n| lastName | string | optional|\n| email | string |The email address of Beneficiary. required |\n| phoneNumber | string | optional  |\n| accountHolderName | string | required|\n| bank | object | see the information about this below. optional + name: bank name required  + code optional   + sortCode optional   + swiftCode optional  + branch  optional   + address: see the definition in address field below optional   |\n| type | string | The value for this field is either _corporate_ or _indivdual_required|\n| address | object | the physical address of the beneficiary and it comprises of the below: optional + country optional  + state optional   + zip required   + city required  + street  required  |\n| currency | string | The currency that Beneficiary would be paid in required|\n| paymentDestination | string | The value for this field is either _mobile_money_wallet_ or _bank_account_ required |\n| destinationAddress | string | see the definition belowrequired |\n| uniqueIdentifier | string | optional |\n\n\nValue Description for the destinationAddress field\n\n\nThe table below show that a destination address should be when given a certain payment destination.\n\n| paymentDestination | destinationAddress |\n|------| ------------- |\n| _mobile_money_wallet_ | phone number used for the wallet |\n| _bank_account_ | account number |
    # @param business_id businessID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def createa_beneficiary(business_id, opts = {})
      createa_beneficiary_with_http_info(business_id, opts)
      return nil
    end

    # Create a Beneficiary
    # This endpoint is used for creating a Beneficiary.  \n\n\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| firstName | string | required|\n| lastName | string | optional|\n| email | string |The email address of Beneficiary. required |\n| phoneNumber | string | optional  |\n| accountHolderName | string | required|\n| bank | object | see the information about this below. optional + name: bank name required  + code optional   + sortCode optional   + swiftCode optional  + branch  optional   + address: see the definition in address field below optional   |\n| type | string | The value for this field is either _corporate_ or _indivdual_required|\n| address | object | the physical address of the beneficiary and it comprises of the below: optional + country optional  + state optional   + zip required   + city required  + street  required  |\n| currency | string | The currency that Beneficiary would be paid in required|\n| paymentDestination | string | The value for this field is either _mobile_money_wallet_ or _bank_account_ required |\n| destinationAddress | string | see the definition belowrequired |\n| uniqueIdentifier | string | optional |\n\n\nValue Description for the destinationAddress field\n\n\nThe table below show that a destination address should be when given a certain payment destination.\n\n| paymentDestination | destinationAddress |\n|------| ------------- |\n| _mobile_money_wallet_ | phone number used for the wallet |\n| _bank_account_ | account number |
    # @param business_id businessID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def createa_beneficiary_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#createa_beneficiary ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling createa_beneficiary" if business_id.nil?
      
      # resource path
      path = "/profile/beneficiaries/business/{businessID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#createa_beneficiary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Beneficiary
    # This endpoint is used for retrieving a single beneficiary attached to a business.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param beneficiary_id The reference or ID of the beneficiary
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def geta_beneficiary(business_id, beneficiary_id, opts = {})
      geta_beneficiary_with_http_info(business_id, beneficiary_id, opts)
      return nil
    end

    # Get a Beneficiary
    # This endpoint is used for retrieving a single beneficiary attached to a business.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param beneficiary_id The reference or ID of the beneficiary
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def geta_beneficiary_with_http_info(business_id, beneficiary_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#geta_beneficiary ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling geta_beneficiary" if business_id.nil?
      
      # verify the required parameter 'beneficiary_id' is set
      fail "Missing the required parameter 'beneficiary_id' when calling geta_beneficiary" if beneficiary_id.nil?
      
      # resource path
      path = "/profile/beneficiaries/business/{businessID}/{beneficiaryID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s).sub('{' + 'beneficiaryID' + '}', beneficiary_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#geta_beneficiary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Beneficiary
    # This endpoint is used for deleting a beneficiary.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param beneficiary_id This is the beneficiary ID of the the benficiary
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def deletea_beneficiary(business_id, beneficiary_id, opts = {})
      deletea_beneficiary_with_http_info(business_id, beneficiary_id, opts)
      return nil
    end

    # Delete a Beneficiary
    # This endpoint is used for deleting a beneficiary.
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param beneficiary_id This is the beneficiary ID of the the benficiary
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def deletea_beneficiary_with_http_info(business_id, beneficiary_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#deletea_beneficiary ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling deletea_beneficiary" if business_id.nil?
      
      # verify the required parameter 'beneficiary_id' is set
      fail "Missing the required parameter 'beneficiary_id' when calling deletea_beneficiary" if beneficiary_id.nil?
      
      # resource path
      path = "/profile/beneficiaries/business/{businessID}/{beneficiaryID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s).sub('{' + 'beneficiaryID' + '}', beneficiary_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfileApi#deletea_beneficiary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Beneficiary
    # This endpoint is used for updating the information for a beneficiary. \n\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| firstName | string | required|\n| lastName | string | optional|\n| email | string |The email address of Beneficiary. required |\n| phoneNumber | string | optional  |\n| accountHolderName | string | optional|\n| bank | object | see the information about this below. optional + name: bank name required  + code optional   + sortCode optional   + swiftCode optional  + branch  optional   + address: see the definition in address field below optional   |\n| type | string | The value for this field is either _corporate_ or _indivdual_required|\n| address | object | the physical address of the beneficiary and it comprises of the below: optional + country optional  + state optional   + zip required   + city required  + street  required  |\n| currency | string | The currency that Beneficiary would be paid in required|\n| paymentDestination | string | The value for this field is either _mobile_money_wallet_ or _bank_account_ required |\n| destinationAddress | string | see the definition belowrequired |\n| uniqueIdentifier | string | optional |\n\n\n\nValue Description for the destinationAddress field\n\nThe table below show that a destination address should be when given a certain payment destination.\n\n| paymentDestination | destinationAddress |\n|------| ------------- |\n| _mobile_money_wallet_ | phone number used for the wallet |\n| _bank_account_ | account number |
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param beneficiary_id The reference or ID of the beneficiary
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def updatea_beneficiary(business_id, beneficiary_id, opts = {})
      updatea_beneficiary_with_http_info(business_id, beneficiary_id, opts)
      return nil
    end

    # Update a Beneficiary
    # This endpoint is used for updating the information for a beneficiary. \n\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| firstName | string | required|\n| lastName | string | optional|\n| email | string |The email address of Beneficiary. required |\n| phoneNumber | string | optional  |\n| accountHolderName | string | optional|\n| bank | object | see the information about this below. optional + name: bank name required  + code optional   + sortCode optional   + swiftCode optional  + branch  optional   + address: see the definition in address field below optional   |\n| type | string | The value for this field is either _corporate_ or _indivdual_required|\n| address | object | the physical address of the beneficiary and it comprises of the below: optional + country optional  + state optional   + zip required   + city required  + street  required  |\n| currency | string | The currency that Beneficiary would be paid in required|\n| paymentDestination | string | The value for this field is either _mobile_money_wallet_ or _bank_account_ required |\n| destinationAddress | string | see the definition belowrequired |\n| uniqueIdentifier | string | optional |\n\n\n\nValue Description for the destinationAddress field\n\nThe table below show that a destination address should be when given a certain payment destination.\n\n| paymentDestination | destinationAddress |\n|------| ------------- |\n| _mobile_money_wallet_ | phone number used for the wallet |\n| _bank_account_ | account number |
    # @param business_id This could be the ID of the business or the ID of a sub-account of the business
    # @param beneficiary_id The reference or ID of the beneficiary
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def updatea_beneficiary_with_http_info(business_id, beneficiary_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#updatea_beneficiary ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling updatea_beneficiary" if business_id.nil?
      
      # verify the required parameter 'beneficiary_id' is set
      fail "Missing the required parameter 'beneficiary_id' when calling updatea_beneficiary" if beneficiary_id.nil?
      
      # resource path
      path = "/profile/beneficiaries/business/{businessID}/{beneficiaryID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s).sub('{' + 'beneficiaryID' + '}', beneficiary_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfileApi#updatea_beneficiary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get business Information
    # This endpoint is used for getting the information on the registered Merchant&#39;s business.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getbusiness_information(opts = {})
      getbusiness_information_with_http_info(opts)
      return nil
    end

    # Get business Information
    # This endpoint is used for getting the information on the registered Merchant&#39;s business.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getbusiness_information_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#getbusiness_information ..."
      end
      
      # resource path
      path = "/profile/business/me".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ProfileApi#getbusiness_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get  All Sub-accounts
    # This endpoint is used to retrieve all subaccounts for a business.
    # @param business_id The ID of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_all_sub_accounts(business_id, opts = {})
      get_all_sub_accounts_with_http_info(business_id, opts)
      return nil
    end

    # Get  All Sub-accounts
    # This endpoint is used to retrieve all subaccounts for a business.
    # @param business_id The ID of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_all_sub_accounts_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#get_all_sub_accounts ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling get_all_sub_accounts" if business_id.nil?
      
      # resource path
      path = "/profile/business/{businessId}/sub-accounts".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#get_all_sub_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Subaccount
    # This endpoint helps you create a sub-account.\n\nREQUEST BODY\n\n\n| Field | Data Type | description |\n|------| ------------- | ----------- |\n| name | string | Customer&#39;s name|\n| email | string | Customer&#39;s email |\n| mobile | string | Customer&#39;s phone number |\n| country | string | Customer&#39;s country e.g NG  |
    # @param business_id The ID of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_subaccount(business_id, opts = {})
      create_subaccount_with_http_info(business_id, opts)
      return nil
    end

    # Create Subaccount
    # This endpoint helps you create a sub-account.\n\nREQUEST BODY\n\n\n| Field | Data Type | description |\n|------| ------------- | ----------- |\n| name | string | Customer&#39;s name|\n| email | string | Customer&#39;s email |\n| mobile | string | Customer&#39;s phone number |\n| country | string | Customer&#39;s country e.g NG  |
    # @param business_id The ID of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_subaccount_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#create_subaccount ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling create_subaccount" if business_id.nil?
      
      # resource path
      path = "/profile/business/{businessId}/sub-accounts".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#create_subaccount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get  One Subaccount
    # This endpoint is used in retrieving one subaccount.
    # @param business_id The ID of the business
    # @param sub_account_id The ID of the subaccount
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_one_subaccount(business_id, sub_account_id, opts = {})
      get_one_subaccount_with_http_info(business_id, sub_account_id, opts)
      return nil
    end

    # Get  One Subaccount
    # This endpoint is used in retrieving one subaccount.
    # @param business_id The ID of the business
    # @param sub_account_id The ID of the subaccount
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_one_subaccount_with_http_info(business_id, sub_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#get_one_subaccount ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling get_one_subaccount" if business_id.nil?
      
      # verify the required parameter 'sub_account_id' is set
      fail "Missing the required parameter 'sub_account_id' when calling get_one_subaccount" if sub_account_id.nil?
      
      # resource path
      path = "/profile/business/{businessId}/sub-accounts/{subAccountId}".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s).sub('{' + 'subAccountId' + '}', sub_account_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#get_one_subaccount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update A Subaccount
    # This endpoint is used to update a subaccount.\n\nREQUEST BODY\n\n\n| Field | Data Type | description |\n|------| ------------- | ----------- |\n| name | string | Customer&#39;s name required|\n| email | string | Customer&#39;s email  required|\n| mobile | string | Customer&#39;s phone number  required|
    # @param business_id The ID of the business
    # @param sub_account_id The ID of the subaccount
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_a_subaccount(business_id, sub_account_id, opts = {})
      update_a_subaccount_with_http_info(business_id, sub_account_id, opts)
      return nil
    end

    # Update A Subaccount
    # This endpoint is used to update a subaccount.\n\nREQUEST BODY\n\n\n| Field | Data Type | description |\n|------| ------------- | ----------- |\n| name | string | Customer&#39;s name required|\n| email | string | Customer&#39;s email  required|\n| mobile | string | Customer&#39;s phone number  required|
    # @param business_id The ID of the business
    # @param sub_account_id The ID of the subaccount
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_a_subaccount_with_http_info(business_id, sub_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#update_a_subaccount ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling update_a_subaccount" if business_id.nil?
      
      # verify the required parameter 'sub_account_id' is set
      fail "Missing the required parameter 'sub_account_id' when calling update_a_subaccount" if sub_account_id.nil?
      
      # resource path
      path = "/profile/business/{businessId}/sub-accounts/{subAccountId}".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s).sub('{' + 'subAccountId' + '}', sub_account_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfileApi#update_a_subaccount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch Merchant Virtual Accounts
    # This endpoint fetches all virtual accounts belonging to a merchant\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | Description |\n| --- | --- | --- |\n| page | string | Specify exactly what page you want to retrieve `required` |\n| perPage | string | Specify how many records you want to retrieve per page `required` |\n| filterBy | object | see note below `optional` |\n\nThe filterBy property is an object with the following attributes below that helps you filter accounts:\n\n*   status - `pending`, `approved` or `declined`\n*   currency - EUR or GBP\n*   accountType - corporate or individual
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def fetch_merchant_virtual_accounts(opts = {})
      fetch_merchant_virtual_accounts_with_http_info(opts)
      return nil
    end

    # Fetch Merchant Virtual Accounts
    # This endpoint fetches all virtual accounts belonging to a merchant\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | Description |\n| --- | --- | --- |\n| page | string | Specify exactly what page you want to retrieve `required` |\n| perPage | string | Specify how many records you want to retrieve per page `required` |\n| filterBy | object | see note below `optional` |\n\nThe filterBy property is an object with the following attributes below that helps you filter accounts:\n\n*   status - `pending`, `approved` or `declined`\n*   currency - EUR or GBP\n*   accountType - corporate or individual
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def fetch_merchant_virtual_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#fetch_merchant_virtual_accounts ..."
      end
      
      # resource path
      path = "/profile/virtual-accounts".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ProfileApi#fetch_merchant_virtual_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get   Subaccount  Virtual Accounts
    # This endpoint is used for retrieving the virtual accounts of your Subaccounts.\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | Description |\n| --- | --- | --- |\n| page | string | Specify exactly what page you want to retrieve `required` |\n| perPage | string | Specify how many records you want to retrieve per page `required` |\n| filterBy | object | see note below `optional` |\n\nThe filterBy property is an object with the following attributes below that helps you filter accounts:\n\n*   status - `pending`, `approved` or `declined`\n*   currency - EUR or GBP\n*   accountType - corporate or individual
    # @param business_id The ID of the business
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_subaccount_virtual_accounts(business_id, opts = {})
      get_subaccount_virtual_accounts_with_http_info(business_id, opts)
      return nil
    end

    # Get   Subaccount  Virtual Accounts
    # This endpoint is used for retrieving the virtual accounts of your Subaccounts.\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | Description |\n| --- | --- | --- |\n| page | string | Specify exactly what page you want to retrieve `required` |\n| perPage | string | Specify how many records you want to retrieve per page `required` |\n| filterBy | object | see note below `optional` |\n\nThe filterBy property is an object with the following attributes below that helps you filter accounts:\n\n*   status - `pending`, `approved` or `declined`\n*   currency - EUR or GBP\n*   accountType - corporate or individual
    # @param business_id The ID of the business
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_subaccount_virtual_accounts_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#get_subaccount_virtual_accounts ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling get_subaccount_virtual_accounts" if business_id.nil?
      
      # resource path
      path = "/profile/virtual-accounts/business/{businessId}/sub-accounts".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#get_subaccount_virtual_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request An EUR virtual Account  For A Subaccount
    # This endpoint is used for creating a virtual account for your customer/customers\n\n**Note**  \nThe first name and last name or business name of a virtual account should always match with the name of the Receiver specified when making payments to the Virtual account. Else such payments would be blocked. Therefore, kindly pass in the right details when requesting a virtual account.\n\nREQUEST BODY\n\n* * *\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| currency | string | e.g EUR,GBP `required` |\n| accountType | string | The account type your customer wants. It should be either **individual** or **corporate** `required` |\n| KYCInformation | object | Verification of your customer Identity. See the tables below for KYC information for **Individual** and **Corporate** `required` |\n| meansOfId | file | Your means of identification from which should be a valid government ID e.g voters card, driving license .`Optional` for corporate virtual account . This should be a File Upload and not sent in Base64 format |\n| utilityBill | file | Electricity bills, water bills. `Optional` for corporate virtual account. This should be a File Upload and not sent in Base64 format |\n\n**Description of KYC Information Object for Individual**\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| lastName | string | the last name of the individual `required` |\n| firstName | string | the first name of the individual `required` |\n| email | string | the email of the individual |\n| birthDate | dateFormat | YYYY-MM-DD `required` |\n| address | object | This contains all the required address information. They are:    \+ country: country of origin `required`  \+ zip `required`  \+ street `required`  \+ state `required`  \+ city `required` |\n| document | object | This contains the required information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `required`  \+ number `required`  \+ issuedCountryCode e.g NG `required`  \+ issuedBy `required`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `required`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n| occupation | string | `required` |\n\n**Description of KYC Information Object for Corporate**\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| businessName | string | `required` |\n| businessRegistrationNumber | string | `required` |\n| incorporationDate | string | `required` |\n| expectedInboundMonthlyTurnover | string | `required` |\n| website | string | `optional` |\n| email | string | `optional` |\n| address | string | This field is required and has the following fields:    \+ country: country of origin `required`  \+ zip `required`  \+ street `required`  \+ state `required`  \+ city `required` |\n| document | object | This field is required and has the following fields:    \+ type: type of ID document e.g International Passport `required`  \+ number `required`  \+ issuedCountryCode e.g NG `required`  \+ issuedBy `required`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `required`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n| ultimateBeneficialOwners | array of objects | This field is required and each object in it should contain the following fields:    \+ lastName `required`  \+ firstName `required`  \+ ownershipPercentage `required`  \+ politicallyExposedPerson `required` |\n| businessActivityDescription | string | `required` |\n| businessCategory | string | This is required for USD,GBP and EUR virtual accounts requests but `optional` for NGN e.g Government agencies, Joint Venture, Political parties |\n| additionalInfo | string | This is required for USD,GBP and EUR virtual account requests |\n| attachments | file | `optional` |
    # @param business_id The ID of the business
    # @param sub_account_id The ID of the subaccount
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def request_an_eu_rvirtual_account_for_a_subaccount(business_id, sub_account_id, opts = {})
      request_an_eu_rvirtual_account_for_a_subaccount_with_http_info(business_id, sub_account_id, opts)
      return nil
    end

    # Request An EUR virtual Account  For A Subaccount
    # This endpoint is used for creating a virtual account for your customer/customers\n\n**Note**  \nThe first name and last name or business name of a virtual account should always match with the name of the Receiver specified when making payments to the Virtual account. Else such payments would be blocked. Therefore, kindly pass in the right details when requesting a virtual account.\n\nREQUEST BODY\n\n* * *\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| currency | string | e.g EUR,GBP `required` |\n| accountType | string | The account type your customer wants. It should be either **individual** or **corporate** `required` |\n| KYCInformation | object | Verification of your customer Identity. See the tables below for KYC information for **Individual** and **Corporate** `required` |\n| meansOfId | file | Your means of identification from which should be a valid government ID e.g voters card, driving license .`Optional` for corporate virtual account . This should be a File Upload and not sent in Base64 format |\n| utilityBill | file | Electricity bills, water bills. `Optional` for corporate virtual account. This should be a File Upload and not sent in Base64 format |\n\n**Description of KYC Information Object for Individual**\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| lastName | string | the last name of the individual `required` |\n| firstName | string | the first name of the individual `required` |\n| email | string | the email of the individual |\n| birthDate | dateFormat | YYYY-MM-DD `required` |\n| address | object | This contains all the required address information. They are:    \+ country: country of origin `required`  \+ zip `required`  \+ street `required`  \+ state `required`  \+ city `required` |\n| document | object | This contains the required information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `required`  \+ number `required`  \+ issuedCountryCode e.g NG `required`  \+ issuedBy `required`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `required`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n| occupation | string | `required` |\n\n**Description of KYC Information Object for Corporate**\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| businessName | string | `required` |\n| businessRegistrationNumber | string | `required` |\n| incorporationDate | string | `required` |\n| expectedInboundMonthlyTurnover | string | `required` |\n| website | string | `optional` |\n| email | string | `optional` |\n| address | string | This field is required and has the following fields:    \+ country: country of origin `required`  \+ zip `required`  \+ street `required`  \+ state `required`  \+ city `required` |\n| document | object | This field is required and has the following fields:    \+ type: type of ID document e.g International Passport `required`  \+ number `required`  \+ issuedCountryCode e.g NG `required`  \+ issuedBy `required`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `required`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n| ultimateBeneficialOwners | array of objects | This field is required and each object in it should contain the following fields:    \+ lastName `required`  \+ firstName `required`  \+ ownershipPercentage `required`  \+ politicallyExposedPerson `required` |\n| businessActivityDescription | string | `required` |\n| businessCategory | string | This is required for USD,GBP and EUR virtual accounts requests but `optional` for NGN e.g Government agencies, Joint Venture, Political parties |\n| additionalInfo | string | This is required for USD,GBP and EUR virtual account requests |\n| attachments | file | `optional` |
    # @param business_id The ID of the business
    # @param sub_account_id The ID of the subaccount
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def request_an_eu_rvirtual_account_for_a_subaccount_with_http_info(business_id, sub_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#request_an_eu_rvirtual_account_for_a_subaccount ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling request_an_eu_rvirtual_account_for_a_subaccount" if business_id.nil?
      
      # verify the required parameter 'sub_account_id' is set
      fail "Missing the required parameter 'sub_account_id' when calling request_an_eu_rvirtual_account_for_a_subaccount" if sub_account_id.nil?
      
      # resource path
      path = "/profile/virtual-accounts/business/{businessId}/sub-accounts/{subAccountId}/requests".sub('{format}','json').sub('{' + 'businessId' + '}', business_id.to_s).sub('{' + 'subAccountId' + '}', sub_account_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#request_an_eu_rvirtual_account_for_a_subaccount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Virtual Account Requests
    # This endpoint is used for getting all virtual account requests tied to a merchant
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_virtual_account_requests(opts = {})
      get_virtual_account_requests_with_http_info(opts)
      return nil
    end

    # Get Virtual Account Requests
    # This endpoint is used for getting all virtual account requests tied to a merchant
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_virtual_account_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#get_virtual_account_requests ..."
      end
      
      # resource path
      path = "/profile/virtual-accounts/requests".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ProfileApi#get_virtual_account_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request A Virtual Account
    # This endpoint is used for requesting a single virtual account or multiple virtual accounts for the same currency.\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | Description |\n| --- | --- | --- |\n| currency | string | e.g GBP, EUR `required` for all currencies |\n| reason | number | This is `optional` for NGN |\n| monthlyVolume | string | This is `optional` for NGN |\n| entityName | string | This is `optional` for NGN |\n| KYCInformation | object | This is `optional` for NGN |\n\n**Description of KYC Information Object**\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| businessCategory | string | `required` |\n| additionalInfo | string | `required` |
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def request_a_virtual_account(opts = {})
      request_a_virtual_account_with_http_info(opts)
      return nil
    end

    # Request A Virtual Account
    # This endpoint is used for requesting a single virtual account or multiple virtual accounts for the same currency.\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | Description |\n| --- | --- | --- |\n| currency | string | e.g GBP, EUR `required` for all currencies |\n| reason | number | This is `optional` for NGN |\n| monthlyVolume | string | This is `optional` for NGN |\n| entityName | string | This is `optional` for NGN |\n| KYCInformation | object | This is `optional` for NGN |\n\n**Description of KYC Information Object**\n\n| Field | Data type | Description |\n| --- | --- | --- |\n| businessCategory | string | `required` |\n| additionalInfo | string | `required` |
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def request_a_virtual_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#request_a_virtual_account ..."
      end
      
      # resource path
      path = "/profile/virtual-accounts/requests".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ProfileApi#request_a_virtual_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get One Virtual Account
    # This endpoint is used for retreiving a virtual account attached to a merchant
    # @param virtual_account_id The Id of the virtual account you want to retrieve
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_one_virtual_account(virtual_account_id, opts = {})
      get_one_virtual_account_with_http_info(virtual_account_id, opts)
      return nil
    end

    # Get One Virtual Account
    # This endpoint is used for retreiving a virtual account attached to a merchant
    # @param virtual_account_id The Id of the virtual account you want to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_one_virtual_account_with_http_info(virtual_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProfileApi#get_one_virtual_account ..."
      end
      
      # verify the required parameter 'virtual_account_id' is set
      fail "Missing the required parameter 'virtual_account_id' when calling get_one_virtual_account" if virtual_account_id.nil?
      
      # resource path
      path = "/profile/virtual-accounts/{virtualAccountId}".sub('{format}','json').sub('{' + 'virtualAccountId' + '}', virtual_account_id.to_s)

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
        @api_client.config.logger.debug "API called: ProfileApi#get_one_virtual_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




