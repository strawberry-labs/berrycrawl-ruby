# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemComponents < Internal::Types::Model
      field :button_primary, -> { Berrycrawl::Types::BrandComponentStyle }, optional: true, nullable: false, api_name: "buttonPrimary"

      field :button_secondary, -> { Berrycrawl::Types::BrandComponentStyle }, optional: true, nullable: false, api_name: "buttonSecondary"

      field :input, -> { Berrycrawl::Types::BrandComponentStyle }, optional: true, nullable: false
    end
  end
end
