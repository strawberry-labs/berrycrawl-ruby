# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandResponseDataMeta < Internal::Types::Model
      field :cached, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :credits_used, -> { Integer }, optional: false, nullable: false, api_name: "creditsUsed"

      field :fetched_at, -> { String }, optional: false, nullable: false, api_name: "fetchedAt"

      field :source_url, -> { String }, optional: false, nullable: false, api_name: "sourceUrl"
    end
  end
end
