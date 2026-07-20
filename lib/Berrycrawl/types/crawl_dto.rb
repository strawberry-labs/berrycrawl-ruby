# frozen_string_literal: true

module Berrycrawl
  module Types
    class CrawlDto < Internal::Types::Model
      field :allow_external_links, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowExternalLinks"

      field :allow_subdomains, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowSubdomains"

      field :crawl_entire_domain, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "crawlEntireDomain"

      field :deduplicate_similar_ur_ls, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "deduplicateSimilarURLs"

      field :delay, -> { Integer }, optional: true, nullable: false

      field :exclude_paths, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "excludePaths"

      field :ignore_query_parameters, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "ignoreQueryParameters"

      field :include_paths, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "includePaths"

      field :limit, -> { Integer }, optional: true, nullable: false

      field :max_concurrency, -> { Integer }, optional: true, nullable: false, api_name: "maxConcurrency"

      field :max_discovery_depth, -> { Integer }, optional: true, nullable: false, api_name: "maxDiscoveryDepth"

      field :prompt, -> { String }, optional: true, nullable: false

      field :scrape_options, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "scrapeOptions"

      field :sitemap, -> { Berrycrawl::Types::CrawlDtoSitemap }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :webhook, -> { Berrycrawl::Types::WebhookConfigDto }, optional: true, nullable: false

      field :zero_data_retention, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "zeroDataRetention"
    end
  end
end
