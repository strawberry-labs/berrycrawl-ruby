# frozen_string_literal: true

module Berrycrawl
  module Types
    class ChangeTrackingFormatDto < Internal::Types::Model
      field :modes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :tag, -> { String }, optional: true, nullable: false

      field :type, -> { Berrycrawl::Types::ChangeTrackingFormatDtoType }, optional: false, nullable: false
    end
  end
end
