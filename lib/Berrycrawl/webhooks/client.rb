# frozen_string_literal: true

module Berrycrawl
  module Webhooks
    class Client
      # @param client [Berrycrawl::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Berrycrawl::Types::ListWebhooksResponse]
      def list(request_options: {}, **_params)
        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "webhooks",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::ListWebhooksResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Berrycrawl::Webhooks::Types::CreateWebhookDto]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Berrycrawl::Types::WebhookResponse]
      def create(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "webhooks",
          body: Berrycrawl::Webhooks::Types::CreateWebhookDto.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::WebhookResponse.load(response.body)
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
      # @return [Berrycrawl::Types::WebhookResponse]
      def get(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "webhooks/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::WebhookResponse.load(response.body)
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
      # @return [Berrycrawl::Types::MessageResponse]
      def delete(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "webhooks/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::MessageResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Berrycrawl::Webhooks::Types::UpdateWebhookDto]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Berrycrawl::Types::WebhookResponse]
      def update(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request_data = Berrycrawl::Webhooks::Types::UpdateWebhookDto.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "webhooks/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::WebhookResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Berrycrawl::Webhooks::Types::TestWebhookDto]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Berrycrawl::Types::TestWebhookResponse]
      def test(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request_data = Berrycrawl::Webhooks::Types::TestWebhookDto.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "webhooks/#{URI.encode_uri_component(params[:id].to_s)}/test",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::TestWebhookResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
