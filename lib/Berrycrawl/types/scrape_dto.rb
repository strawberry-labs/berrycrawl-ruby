# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScrapeDto < Internal::Types::Model
      field :actions, -> { Internal::Types::Array[Berrycrawl::Types::ActionDto] }, optional: true, nullable: false

      field :block_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "blockAds"

      field :domain, -> { String }, optional: true, nullable: false

      field :exclude_tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "excludeTags"

      field :extraction_schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extractionSchema"

      field :formats, -> { Internal::Types::Array[Berrycrawl::Types::ScrapeDtoFormatsItem] }, optional: true, nullable: false

      field :headers, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :include_tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "includeTags"

      field :location, -> { Berrycrawl::Types::LocationDto }, optional: true, nullable: false

      field :max_age, -> { Integer }, optional: true, nullable: false, api_name: "maxAge"

      field :mobile, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :only_main_content, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "onlyMainContent"

      field :proxy, -> { Berrycrawl::Types::ScrapeDtoProxy }, optional: true, nullable: false

      field :remove_base64_images, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "removeBase64Images"

      field :screenshot_as_base64, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "screenshotAsBase64"

      field :skip_tls_verification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "skipTlsVerification"

      field :store_in_cache, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "storeInCache"

      field :timeout, -> { Integer }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :wait_for, -> { Integer }, optional: true, nullable: false, api_name: "waitFor"

      field :zero_data_retention, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "zeroDataRetention"
    end
  end
end
