# frozen_string_literal: true

module Berrycrawl
  module Types
    class JSONFormatDto < Internal::Types::Model
      field :prompt, -> { String }, optional: true, nullable: false

      field :schema, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :type, -> { Berrycrawl::Types::JSONFormatDtoType }, optional: false, nullable: false
    end
  end
end
