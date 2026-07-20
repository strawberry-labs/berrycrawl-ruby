# frozen_string_literal: true

module Berrycrawl
  module Types
    class ExtractDto < Internal::Types::Model
      field :agent, -> { Berrycrawl::Types::AgentConfigDto }, optional: true, nullable: false

      field :enable_web_search, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "enableWebSearch"

      field :ignore_invalid_ur_ls, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "ignoreInvalidURLs"

      field :ignore_sitemap, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "ignoreSitemap"

      field :include_subdomains, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeSubdomains"

      field :prompt, -> { String }, optional: false, nullable: false

      field :schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :scrape_options, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "scrapeOptions"

      field :show_sources, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "showSources"

      field :urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :webhook, -> { Berrycrawl::Types::ExtractWebhookConfigDto }, optional: true, nullable: false
    end
  end
end
