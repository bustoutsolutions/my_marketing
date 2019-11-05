=begin
#MyMarketing Notifications

#Virtuoso MyMarketing Notification API

OpenAPI spec version: 1.0.0
Contact: techappdev@virtuoso.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module MyMarketing
  class ConsumerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a consumer
    # Create a consumer record
    # @param body Create a consumer record
    # @param [Hash] opts the optional parameters
    # @return [ConsumerResponse]
    def consumers_post(body, opts = {})
      data, _status_code, _headers = consumers_post_with_http_info(body, opts)
      data
    end

    # Create a consumer
    # Create a consumer record
    # @param body Create a consumer record
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsumerResponse, Fixnum, Hash)>] ConsumerResponse data, response status code and response headers
    def consumers_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsumerApi.consumers_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConsumerApi.consumers_post"
      end
      # resource path
      local_var_path = '/consumers'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConsumerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConsumerApi#consumers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a consumer
    # Update a consumer record based on virtuosoId.
    # @param virtuoso_id Virtuoso ID for this consumer that was received as part of /consumer POST response
    # @param body Update an existing Consumer record
    # @param [Hash] opts the optional parameters
    # @return [ConsumerResponse]
    def consumers_virtuoso_id_put(virtuoso_id, body, opts = {})
      data, _status_code, _headers = consumers_virtuoso_id_put_with_http_info(virtuoso_id, body, opts)
      data
    end

    # Update a consumer
    # Update a consumer record based on virtuosoId.
    # @param virtuoso_id Virtuoso ID for this consumer that was received as part of /consumer POST response
    # @param body Update an existing Consumer record
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsumerResponse, Fixnum, Hash)>] ConsumerResponse data, response status code and response headers
    def consumers_virtuoso_id_put_with_http_info(virtuoso_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsumerApi.consumers_virtuoso_id_put ...'
      end
      # verify the required parameter 'virtuoso_id' is set
      if @api_client.config.client_side_validation && virtuoso_id.nil?
        fail ArgumentError, "Missing the required parameter 'virtuoso_id' when calling ConsumerApi.consumers_virtuoso_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConsumerApi.consumers_virtuoso_id_put"
      end
      # resource path
      local_var_path = '/consumers/{virtuosoId}'.sub('{' + 'virtuosoId' + '}', virtuoso_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConsumerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConsumerApi#consumers_virtuoso_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end