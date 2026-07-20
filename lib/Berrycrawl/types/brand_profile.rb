# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandProfile < Internal::Types::Model
      field :branding, -> { Berrycrawl::Types::BrandDesignSystem }, optional: true, nullable: false

      field :colors, -> { Internal::Types::Array[Berrycrawl::Types::BrandProfileColorsItem] }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: false, nullable: false

      field :fonts, -> { Internal::Types::Array[Berrycrawl::Types::BrandProfileFontsItem] }, optional: false, nullable: false

      field :images, -> { Internal::Types::Array[Berrycrawl::Types::BrandAsset] }, optional: false, nullable: false

      field :language, -> { String }, optional: true, nullable: false

      field :logos, -> { Internal::Types::Array[Berrycrawl::Types::BrandAsset] }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :socials, -> { Internal::Types::Array[Berrycrawl::Types::BrandProfileSocialsItem] }, optional: false, nullable: false

      field :tagline, -> { String }, optional: true, nullable: false
    end
  end
end
