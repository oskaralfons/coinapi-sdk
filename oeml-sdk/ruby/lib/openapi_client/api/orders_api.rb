=begin
#OEML - REST API

#This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module OpenapiClient
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel all orders
    # This request cancels all open orders across all or single specified exchange.
    # @param order_cancel_all_request [OrderCancelAllRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Message]
    def v1_orders_cancel_all_post(order_cancel_all_request, opts = {})
      data, _status_code, _headers = v1_orders_cancel_all_post_with_http_info(order_cancel_all_request, opts)
      data
    end

    # Cancel all orders
    # This request cancels all open orders across all or single specified exchange.
    # @param order_cancel_all_request [OrderCancelAllRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Message, Integer, Hash)>] Message data, response status code and response headers
    def v1_orders_cancel_all_post_with_http_info(order_cancel_all_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.v1_orders_cancel_all_post ...'
      end
      # verify the required parameter 'order_cancel_all_request' is set
      if @api_client.config.client_side_validation && order_cancel_all_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_cancel_all_request' when calling OrdersApi.v1_orders_cancel_all_post"
      end
      # resource path
      local_var_path = '/v1/orders/cancel/all'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(order_cancel_all_request) 

      # return_type
      return_type = opts[:return_type] || 'Message' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#v1_orders_cancel_all_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel order
    # This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
    # @param order_cancel_single_request [OrderCancelSingleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExecutionReport]
    def v1_orders_cancel_post(order_cancel_single_request, opts = {})
      data, _status_code, _headers = v1_orders_cancel_post_with_http_info(order_cancel_single_request, opts)
      data
    end

    # Cancel order
    # This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
    # @param order_cancel_single_request [OrderCancelSingleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExecutionReport, Integer, Hash)>] ExecutionReport data, response status code and response headers
    def v1_orders_cancel_post_with_http_info(order_cancel_single_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.v1_orders_cancel_post ...'
      end
      # verify the required parameter 'order_cancel_single_request' is set
      if @api_client.config.client_side_validation && order_cancel_single_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_cancel_single_request' when calling OrdersApi.v1_orders_cancel_post"
      end
      # resource path
      local_var_path = '/v1/orders/cancel'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'appliction/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(order_cancel_single_request) 

      # return_type
      return_type = opts[:return_type] || 'ExecutionReport' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#v1_orders_cancel_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all orders
    # Get all current open orders across all or single specified exchange.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :exchange_id Filter the output to the orders from the specific exchange.
    # @return [Array<NewOrder>]
    def v1_orders_get(opts = {})
      data, _status_code, _headers = v1_orders_get_with_http_info(opts)
      data
    end

    # Get all orders
    # Get all current open orders across all or single specified exchange.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :exchange_id Filter the output to the orders from the specific exchange.
    # @return [Array<(Array<NewOrder>, Integer, Hash)>] Array<NewOrder> data, response status code and response headers
    def v1_orders_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.v1_orders_get ...'
      end
      # resource path
      local_var_path = '/v1/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'exchange_id'] = opts[:'exchange_id'] if !opts[:'exchange_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<NewOrder>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#v1_orders_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new order
    # This request creating new order for the specific exchange.
    # @param new_order [NewOrder] 
    # @param [Hash] opts the optional parameters
    # @return [ExecutionReport]
    def v1_orders_post(new_order, opts = {})
      data, _status_code, _headers = v1_orders_post_with_http_info(new_order, opts)
      data
    end

    # Create new order
    # This request creating new order for the specific exchange.
    # @param new_order [NewOrder] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExecutionReport, Integer, Hash)>] ExecutionReport data, response status code and response headers
    def v1_orders_post_with_http_info(new_order, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.v1_orders_post ...'
      end
      # verify the required parameter 'new_order' is set
      if @api_client.config.client_side_validation && new_order.nil?
        fail ArgumentError, "Missing the required parameter 'new_order' when calling OrdersApi.v1_orders_post"
      end
      # resource path
      local_var_path = '/v1/orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'appliction/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(new_order) 

      # return_type
      return_type = opts[:return_type] || 'ExecutionReport' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#v1_orders_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get order status
    # Get the current order status for the specified order. The requested order can no longer be active.
    # @param client_order_id [String] Order Client Id of the order for which the status is requested.
    # @param [Hash] opts the optional parameters
    # @return [ExecutionReport]
    def v1_orders_status_client_order_id_get(client_order_id, opts = {})
      data, _status_code, _headers = v1_orders_status_client_order_id_get_with_http_info(client_order_id, opts)
      data
    end

    # Get order status
    # Get the current order status for the specified order. The requested order can no longer be active.
    # @param client_order_id [String] Order Client Id of the order for which the status is requested.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExecutionReport, Integer, Hash)>] ExecutionReport data, response status code and response headers
    def v1_orders_status_client_order_id_get_with_http_info(client_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.v1_orders_status_client_order_id_get ...'
      end
      # verify the required parameter 'client_order_id' is set
      if @api_client.config.client_side_validation && client_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_order_id' when calling OrdersApi.v1_orders_status_client_order_id_get"
      end
      # resource path
      local_var_path = '/v1/orders/status/{client_order_id}'.sub('{' + 'client_order_id' + '}', CGI.escape(client_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ExecutionReport' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#v1_orders_status_client_order_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
