# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScrapeResponse < Internal::Types::Model
      field :credits, -> { Berrycrawl::Types::ScrapeResponseCredits }, optional: false, nullable: false

      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :error, -> { String }, optional: true, nullable: false

      field :metadata, -> { Berrycrawl::Types::ScrapeMetadata }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
