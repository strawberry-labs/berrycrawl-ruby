# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystem < Internal::Types::Model
      field :colors, -> { Berrycrawl::Types::BrandDesignSystemColors }, optional: false, nullable: false

      field :color_scheme, -> { Berrycrawl::Types::BrandDesignSystemColorScheme }, optional: false, nullable: false, api_name: "colorScheme"

      field :components, -> { Berrycrawl::Types::BrandDesignSystemComponents }, optional: false, nullable: false

      field :images, -> { Berrycrawl::Types::BrandDesignSystemImages }, optional: false, nullable: false

      field :spacing, -> { Berrycrawl::Types::BrandDesignSystemSpacing }, optional: false, nullable: false

      field :typography, -> { Berrycrawl::Types::BrandDesignSystemTypography }, optional: false, nullable: false
    end
  end
end
