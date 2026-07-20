# frozen_string_literal: true

module Berrycrawl
  module Types
    class SearchDto < Internal::Types::Model
      field :categories, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :limit, -> { Integer }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :query, -> { String }, optional: false, nullable: false

      field :sources, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :tbs, -> { String }, optional: true, nullable: false

      field :timeout, -> { Integer }, optional: true, nullable: false
    end
  end
end
