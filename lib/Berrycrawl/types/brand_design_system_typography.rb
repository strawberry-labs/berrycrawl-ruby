# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemTypography < Internal::Types::Model
      field :font_families, -> { Berrycrawl::Types::BrandDesignSystemTypographyFontFamilies }, optional: false, nullable: false, api_name: "fontFamilies"

      field :font_sizes, -> { Berrycrawl::Types::BrandDesignSystemTypographyFontSizes }, optional: false, nullable: false, api_name: "fontSizes"

      field :font_stacks, -> { Berrycrawl::Types::BrandDesignSystemTypographyFontStacks }, optional: false, nullable: false, api_name: "fontStacks"
    end
  end
end
