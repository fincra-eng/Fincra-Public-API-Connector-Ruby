require "uri"

module FincraDeveloperApi
  class DisbursementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Make A Payout
    # This endpoint is used for making a payment out to the beneficiaries of the business who are not registered on our platform\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| sourceCurrency | string | The currency which the business is to send payment in `required` |\n| destinationCurrency | string | The currency which the beneficiary is to receive payment in`required` |\n| amount | string | The amount to be paid out`required` |\n| business | string | This could be the ID of the business or the ID of a sub-account of the business `required` |\n| description | string | `required` |\n| customerReference | string | This is the unique reference generated for the transaction on your platform `optional` |\n| beneficiary | object | See the description of the beneficiary object below`required` |\n| paymentDestination | string | This is where the payment is to be made. the value will be one of the following: *bank_account*, *mobile_money_wallet* `required` |\n| quoteReference | string | This is required if the payout is a cross currency payout(e.g, NGN to USD). If this is a single currency payout (e.g, EUR to EUR), a quote reference is not required. To get a quote reference, you will need to call the generate quote endpoint below |\n| paymentScheme | string | This is the valid payment scheme for the destination currency.Payment scheme is required for all USD,EUR and GBP payouts |\n\nThe beneficiaries information varies based on the currency and beneficiary type (individual or corporate). Find the breakdown of the beneficiaries object below:\n\nDescription of `INDIVIDUAL` or `CORPORATE` Beneficiary information for `NGN` and `KES` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` if type is **individual** and `optional` if type is **corporate** |\n| firstName | string | The first name of the beneficiary if type is **individual** or the name of the corporation if type is **corporate** `required` |\n| accountNumber | string | This is the bank account number of the beneficiary or phone number if the account is a mobile money wallet. `required` |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| bankCode | string | This value is either the code for your bank or mobile money wallet provider. To get this value, you will need to call the get bank code endpoint below `required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n\nDescription of `INDIVIDUAL` or `CORPORATE` Beneficiary information for `GHS` and `ZAR` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` if type is **individual** and `optional` if type is **corporate** |\n| firstName | string | The first name of the beneficiary if type is **individual** or the name of the corporation if type is **corporate** `required` |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This is the bank account number of the beneficiary or phone number if the account is a mobile money wallet. `required` |\n| bankCode | string | This value is either the code for your bank or mobile money wallet provider. To get this value, you will need to call the get bank code endpoint below `required` |\n| sortCode(branchCode) | string | To get this code, you will need to call the get bank branch endpoint below `required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n\nDescription of `INDIVIDUAL` Beneficiary information for `EUR` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` |\n| firstName | string | The first name of the beneficiary |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This value of this field will be IBAN of the beneficiary. Depending on the country, the IBAN is mostly made up of the following format: *Country code + check digits + bank code + sort code + account number*. Kindly visit this page to see the IBAN format for different countries.`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| birthDate | string | `optional` |\n| birthPlace | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `CORPORATE` Beneficiary information for `EUR` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This value of this field will be IBAN of the beneficiary. Depending on the country, the IBAN is mostly made up of the following format: *Country code + check digits + bank code + sort code + account number*. Kindly visit this page to see the IBAN format for different countries.`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| registrationNumber | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `CORPORATE` Beneficiary information for `GBP` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| sortCode | string | `required` |\n| registrationNumber | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `INDIVIDUAL` Beneficiary information for `GBP` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` |\n| firstName | string | The first name of the beneficiary |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| sortCode | string | `required` |\n| birthDate | string | `optional` |\n| birthPlace | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `CORPORATE` Beneficiary information for `USD` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `required` |\n| sortCode | string | `required` |\n| registrationNumber | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `INDIVIDUAL` Beneficiary information for `USD` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` |\n| firstName | string | The first name of the beneficiary |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `required` |\n| sortCode | string | `required` |\n| birthDate | string | `optional` |\n| birthPlace | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def make_a_payout(opts = {})
      make_a_payout_with_http_info(opts)
      return nil
    end

    # Make A Payout
    # This endpoint is used for making a payment out to the beneficiaries of the business who are not registered on our platform\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| sourceCurrency | string | The currency which the business is to send payment in `required` |\n| destinationCurrency | string | The currency which the beneficiary is to receive payment in`required` |\n| amount | string | The amount to be paid out`required` |\n| business | string | This could be the ID of the business or the ID of a sub-account of the business `required` |\n| description | string | `required` |\n| customerReference | string | This is the unique reference generated for the transaction on your platform `optional` |\n| beneficiary | object | See the description of the beneficiary object below`required` |\n| paymentDestination | string | This is where the payment is to be made. the value will be one of the following: *bank_account*, *mobile_money_wallet* `required` |\n| quoteReference | string | This is required if the payout is a cross currency payout(e.g, NGN to USD). If this is a single currency payout (e.g, EUR to EUR), a quote reference is not required. To get a quote reference, you will need to call the generate quote endpoint below |\n| paymentScheme | string | This is the valid payment scheme for the destination currency.Payment scheme is required for all USD,EUR and GBP payouts |\n\nThe beneficiaries information varies based on the currency and beneficiary type (individual or corporate). Find the breakdown of the beneficiaries object below:\n\nDescription of `INDIVIDUAL` or `CORPORATE` Beneficiary information for `NGN` and `KES` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` if type is **individual** and `optional` if type is **corporate** |\n| firstName | string | The first name of the beneficiary if type is **individual** or the name of the corporation if type is **corporate** `required` |\n| accountNumber | string | This is the bank account number of the beneficiary or phone number if the account is a mobile money wallet. `required` |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| bankCode | string | This value is either the code for your bank or mobile money wallet provider. To get this value, you will need to call the get bank code endpoint below `required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n\nDescription of `INDIVIDUAL` or `CORPORATE` Beneficiary information for `GHS` and `ZAR` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` if type is **individual** and `optional` if type is **corporate** |\n| firstName | string | The first name of the beneficiary if type is **individual** or the name of the corporation if type is **corporate** `required` |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This is the bank account number of the beneficiary or phone number if the account is a mobile money wallet. `required` |\n| bankCode | string | This value is either the code for your bank or mobile money wallet provider. To get this value, you will need to call the get bank code endpoint below `required` |\n| sortCode(branchCode) | string | To get this code, you will need to call the get bank branch endpoint below `required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n\nDescription of `INDIVIDUAL` Beneficiary information for `EUR` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` |\n| firstName | string | The first name of the beneficiary |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This value of this field will be IBAN of the beneficiary. Depending on the country, the IBAN is mostly made up of the following format: *Country code + check digits + bank code + sort code + account number*. Kindly visit this page to see the IBAN format for different countries.`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| birthDate | string | `optional` |\n| birthPlace | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `CORPORATE` Beneficiary information for `EUR` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This value of this field will be IBAN of the beneficiary. Depending on the country, the IBAN is mostly made up of the following format: *Country code + check digits + bank code + sort code + account number*. Kindly visit this page to see the IBAN format for different countries.`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| registrationNumber | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `CORPORATE` Beneficiary information for `GBP` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| sortCode | string | `required` |\n| registrationNumber | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `INDIVIDUAL` Beneficiary information for `GBP` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` |\n| firstName | string | The first name of the beneficiary |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `optional` |\n| sortCode | string | `required` |\n| birthDate | string | `optional` |\n| birthPlace | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `CORPORATE` Beneficiary information for `USD` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `required` |\n| sortCode | string | `required` |\n| registrationNumber | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |\n\nDescription of `INDIVIDUAL` Beneficiary information for `USD` payout:\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| lastName | string | The last name of the beneficiary. it is `required` |\n| firstName | string | The first name of the beneficiary |\n| accountHolderName | string | This is the name on the bank account of the beneficiary. `required` |\n| accountNumber | string | This should be the beneficiary&#39;s account number`required` |\n| type | string | the value can either be **individual** or **corporate** `required` |\n| country | string | `optional` |\n| email | string | `optional` |\n| mobile | string | `optional` |\n| bankSwiftCode | string | `required` |\n| sortCode | string | `required` |\n| birthDate | string | `optional` |\n| birthPlace | string | `optional` |\n| address | object | This contains all the optional address information. They are:    \+ country: country of origin `optional`  \+ zip `optional`  \+ street `optional`  \+ state `optional`  \+ city `optional` |\n| document | object | This contains the optional information in your means of identification. They are:    \+ type: type of ID document e.g International Passport `optional`  \+ number `optional`  \+ issuedCountryCode e.g NG `optional`  \+ issuedBy `optional`  \+ issuedDate with Format \&quot;YYYY-mm-dd\&quot; `optional`  \+ expirationDate with Format \&quot;YYYY-mm-dd\&quot; `optional` |
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def make_a_payout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DisbursementsApi#make_a_payout ..."
      end
      
      # resource path
      path = "/disbursements/payouts".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: DisbursementsApi#make_a_payout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Make  An Internal  Payout
    # This endpoint is used for making a payment out to a customer/user/subaccount on our platform\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| amount | string | The amount to be paid out`required` |\n| business | string | This could be the ID of the business or the ID of a sub-account of the business `required` |\n| customerReference | string | This is the unique reference generated for the transaction on your platform. `required` |\n| description | string | `required` |\n| beneficiaryWalletNumber | string | This is the unique wallet of the beneficiary you want to pay to `required` |
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def make_an_internal_payout(opts = {})
      make_an_internal_payout_with_http_info(opts)
      return nil
    end

    # Make  An Internal  Payout
    # This endpoint is used for making a payment out to a customer/user/subaccount on our platform\n\nREQUEST BODY\n\n* * *\n\n| Field | Data Type | description |\n| --- | --- | --- |\n| amount | string | The amount to be paid out`required` |\n| business | string | This could be the ID of the business or the ID of a sub-account of the business `required` |\n| customerReference | string | This is the unique reference generated for the transaction on your platform. `required` |\n| description | string | `required` |\n| beneficiaryWalletNumber | string | This is the unique wallet of the beneficiary you want to pay to `required` |
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def make_an_internal_payout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DisbursementsApi#make_an_internal_payout ..."
      end
      
      # resource path
      path = "/disbursements/payouts/wallets".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: DisbursementsApi#make_an_internal_payout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all settlements for a Business
    # This endpoint provides a list of all the settlements for a business.\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|\n| from | string| Specify start date with format \&quot;YYYY-mm-dd\&quot;  optional|\n| to | string| Specify end date with format \&quot;YYYY-mm-dd\&quot; optional|
    # @param business_id businessID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getallsettlementsfora_business(business_id, opts = {})
      getallsettlementsfora_business_with_http_info(business_id, opts)
      return nil
    end

    # Get all settlements for a Business
    # This endpoint provides a list of all the settlements for a business.\n\n\nREQUEST BODY\n\n\n| Field | Data Type | Description |\n|------| ------------- | ----------- |\n| page | string | Specify exactly what page you want to retrieve optional|\n| perPage | string | Specify how many records you want to retrieve per page optional|\n| from | string| Specify start date with format \&quot;YYYY-mm-dd\&quot;  optional|\n| to | string| Specify end date with format \&quot;YYYY-mm-dd\&quot; optional|
    # @param business_id businessID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getallsettlementsfora_business_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DisbursementsApi#getallsettlementsfora_business ..."
      end
      
      # verify the required parameter 'business_id' is set
      fail "Missing the required parameter 'business_id' when calling getallsettlementsfora_business" if business_id.nil?
      
      # resource path
      path = "/disbursements/settlements/search/business/{businessID}".sub('{format}','json').sub('{' + 'businessID' + '}', business_id.to_s)

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
        @api_client.config.logger.debug "API called: DisbursementsApi#getallsettlementsfora_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a settlement for a business
    # This endpoint provides the details of a settlement through the use of its ID.
    # @param settlement_id settlementId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def getasettlementforabusiness(settlement_id, opts = {})
      getasettlementforabusiness_with_http_info(settlement_id, opts)
      return nil
    end

    # Get a settlement for a business
    # This endpoint provides the details of a settlement through the use of its ID.
    # @param settlement_id settlementId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def getasettlementforabusiness_with_http_info(settlement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DisbursementsApi#getasettlementforabusiness ..."
      end
      
      # verify the required parameter 'settlement_id' is set
      fail "Missing the required parameter 'settlement_id' when calling getasettlementforabusiness" if settlement_id.nil?
      
      # resource path
      path = "/disbursements/settlements/{settlementId}".sub('{format}','json').sub('{' + 'settlementId' + '}', settlement_id.to_s)

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
        @api_client.config.logger.debug "API called: DisbursementsApi#getasettlementforabusiness\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




