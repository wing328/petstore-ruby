=begin
Swagger Petstore

This is a sample server Petstore server.  You can find out more about Swagger at <a href=\"http://swagger.io\">http://swagger.io</a> or on irc.freenode.net, #swagger.  For this sample, you can use the api key \"special-key\" to test the authorization filters

OpenAPI spec version: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: Apache 2.0
http://www.apache.org/licenses/LICENSE-2.0.html

Terms of Service: http://swagger.io/terms/

=end

require "uri"

module SwaggerClient
  class StoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
    # @param order_id ID of the order that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_order(order_id, opts = {})
      delete_order_with_http_info(order_id, opts)
      return nil
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    # @param order_id ID of the order that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi#delete_order ..."
      end
      
      # verify the required parameter 'order_id' is set
      fail "Missing the required parameter 'order_id' when calling delete_order" if order_id.nil?
      
      # resource path
      local_var_path = "/store/order/{orderId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#delete_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finds orders by status
    # A single status value can be provided as a string
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status value that needs to be considered for query (default to placed)
    # @return [Array<Order>]
    def find_orders_by_status(opts = {})
      data, _status_code, _headers = find_orders_by_status_with_http_info(opts)
      return data
    end

    # Finds orders by status
    # A single status value can be provided as a string
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status value that needs to be considered for query
    # @return [Array<(Array<Order>, Fixnum, Hash)>] Array<Order> data, response status code and response headers
    def find_orders_by_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi#find_orders_by_status ..."
      end
      
      if opts[:'status'] && !['placed', 'approved', 'delivered'].include?(opts[:'status'])
        fail 'invalid value for "status", must be one of placed, approved, delivered'
      end
      
      # resource path
      local_var_path = "/store/findByStatus".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if opts[:'status']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['test_api_client_id', 'test_api_client_secret']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Order>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#find_orders_by_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Integer>]
    def get_inventory(opts = {})
      data, _status_code, _headers = get_inventory_with_http_info(opts)
      return data
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Integer>, Fixnum, Hash)>] Hash<String, Integer> data, response status code and response headers
    def get_inventory_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi#get_inventory ..."
      end
      
      # resource path
      local_var_path = "/store/inventory".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hash<String, Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_inventory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fake endpoint to test arbitrary object return by 'Get inventory'
    # Returns an arbitrary object which is actually a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_inventory_in_object(opts = {})
      data, _status_code, _headers = get_inventory_in_object_with_http_info(opts)
      return data
    end

    # Fake endpoint to test arbitrary object return by &#39;Get inventory&#39;
    # Returns an arbitrary object which is actually a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_inventory_in_object_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi#get_inventory_in_object ..."
      end
      
      # resource path
      local_var_path = "/store/inventory?response=arbitrary_object".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_inventory_in_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
    # @param order_id ID of pet that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def get_order_by_id(order_id, opts = {})
      data, _status_code, _headers = get_order_by_id_with_http_info(order_id, opts)
      return data
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value &lt;= 5 or &gt; 10. Other values will generated exceptions
    # @param order_id ID of pet that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Fixnum, Hash)>] Order data, response status code and response headers
    def get_order_by_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi#get_order_by_id ..."
      end
      
      # verify the required parameter 'order_id' is set
      fail "Missing the required parameter 'order_id' when calling get_order_by_id" if order_id.nil?
      
      # resource path
      local_var_path = "/store/order/{orderId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['test_api_key_header', 'test_api_key_query']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Order')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_order_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Place an order for a pet
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Order] :body order placed for purchasing the pet
    # @return [Order]
    def place_order(opts = {})
      data, _status_code, _headers = place_order_with_http_info(opts)
      return data
    end

    # Place an order for a pet
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Order] :body order placed for purchasing the pet
    # @return [Array<(Order, Fixnum, Hash)>] Order data, response status code and response headers
    def place_order_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi#place_order ..."
      end
      
      # resource path
      local_var_path = "/store/order".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      
      auth_names = ['test_api_client_id', 'test_api_client_secret']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Order')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#place_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
