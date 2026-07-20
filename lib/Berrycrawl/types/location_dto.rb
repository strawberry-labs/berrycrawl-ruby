# frozen_string_literal: true

module Berrycrawl
  module Types
    class LocationDto < Internal::Types::Model
      field :country, -> { String }, optional: true, nullable: false

      field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
