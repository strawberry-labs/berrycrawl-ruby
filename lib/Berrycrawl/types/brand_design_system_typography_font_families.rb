# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemTypographyFontFamilies < Internal::Types::Model
      field :heading, -> { String }, optional: true, nullable: false

      field :primary, -> { String }, optional: true, nullable: false
    end
  end
end
