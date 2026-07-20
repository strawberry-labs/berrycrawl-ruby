# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemTypographyFontStacks < Internal::Types::Model
      field :body, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :heading, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :paragraph, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
