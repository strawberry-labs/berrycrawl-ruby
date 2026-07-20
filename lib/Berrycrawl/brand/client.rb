# frozen_string_literal: true

module Berrycrawl
  module Brand
    class Client
      # @param client [Berrycrawl::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Send one website URL. BerryCrawl returns the brand identity found on that site.
      #
      # @param request_options [Hash]
      # @param params [Berrycrawl::Brand::Types::BrandDto]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Berrycrawl::Types::BrandResponse]
      def retrieve(request_options: {}, **params)
        params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
        request = Berrycrawl::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "brand",
          body: Berrycrawl::Brand::Types::BrandDto.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Berrycrawl::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Berrycrawl::Types::BrandResponse.load(response.body)
        else
          error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
