# frozen_string_literal: true

module Berrycrawl
  module Types
    class MapResponse < Internal::Types::Model
      field :credits_used, -> { Integer }, optional: false, nullable: false, api_name: "creditsUsed"

      field :links, -> { Internal::Types::Array[Berrycrawl::Types::MapLink] }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :total, -> { Integer }, optional: false, nullable: false
    end
  end
end
