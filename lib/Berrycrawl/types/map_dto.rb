# frozen_string_literal: true

module Berrycrawl
  module Types
    class MapDto < Internal::Types::Model
      field :ignore_query_parameters, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "ignoreQueryParameters"

      field :include_subdomains, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeSubdomains"

      field :limit, -> { Integer }, optional: true, nullable: false

      field :location, -> { Berrycrawl::Types::LocationDto }, optional: true, nullable: false

      field :search, -> { String }, optional: true, nullable: false

      field :sitemap, -> { Berrycrawl::Types::MapDtoSitemap }, optional: true, nullable: false

      field :timeout, -> { Integer }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
