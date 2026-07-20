# frozen_string_literal: true

module Berrycrawl
  class Client
    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::CrawlDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::JobCreatedResponse]
    def crawl(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "crawl",
        body: Berrycrawl::Types::CrawlDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::JobCreatedResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::ExtractDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::JobCreatedResponse]
    def extract(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "extract",
        body: Berrycrawl::Types::ExtractDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::JobCreatedResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::MapDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::MapResponse]
    def map(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "map",
        body: Berrycrawl::Types::MapDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::MapResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::ParseDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::ScrapeResponse]
    def parse(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "parse",
        body: Berrycrawl::Types::ParseDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::ScrapeResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::ScrapeDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::ScrapeResponse]
    def scrape(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "scrape",
        body: Berrycrawl::Types::ScrapeDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::ScrapeResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Cookie banners, blocking overlays, chat widgets, and lazy loading are handled by default. Every cleanup pass can
    # be controlled per request.
    #
    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::ScreenshotDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::ScrapeResponse]
    def screenshot(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "screenshot",
        body: Berrycrawl::Types::ScreenshotDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::ScrapeResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param request_options [Hash]
    # @param params [Berrycrawl::Types::SearchDto]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [Berrycrawl::Types::SearchResponse]
    def search(request_options: {}, **params)
      params = Berrycrawl::Internal::Types::Utils.normalize_keys(params)
      request = Berrycrawl::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "search",
        body: Berrycrawl::Types::SearchDto.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Berrycrawl::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Berrycrawl::Types::SearchResponse.load(response.body)
      else
        error_class = Berrycrawl::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param base_url [String, nil]
    # @param token [String]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(base_url: nil, token: ENV.fetch("BERRYCRAWL_API_KEY", nil), max_retries: 2)
      @raw_client = Berrycrawl::Internal::Http::RawClient.new(
        base_url: base_url || Berrycrawl::Environment::PRODUCTION,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Berrycrawl::Account::Client]
    def account
      @account ||= Berrycrawl::Account::Client.new(client: @raw_client)
    end

    # @return [Berrycrawl::Brand::Client]
    def brand
      @brand ||= Berrycrawl::Brand::Client.new(client: @raw_client)
    end

    # @return [Berrycrawl::Jobs::Client]
    def jobs
      @jobs ||= Berrycrawl::Jobs::Client.new(client: @raw_client)
    end

    # @return [Berrycrawl::Webhooks::Client]
    def webhooks
      @webhooks ||= Berrycrawl::Webhooks::Client.new(client: @raw_client)
    end
  end
end
