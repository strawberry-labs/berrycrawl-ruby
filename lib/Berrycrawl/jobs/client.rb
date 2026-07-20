# frozen_string_literal: true

module Berrycrawl
  module Jobs
    class Client
      # @param client [Berrycrawl::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Berrycrawl::Jobs::Types::ListJobsRequestType, nil] :type
      # @option params [Berrycrawl::Jobs::Types::ListJobsRequestStatus, nil] :status
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @return [Berrycrawl::Types::ListJobsResponse]
      def list(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "jobs",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::ListJobsResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @return [Berrycrawl::Types::JobResponse]
      def get(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "jobs/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::JobResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Berrycrawl::Types::CancelJobResponse]
      def cancel(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "jobs/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::CancelJobResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
