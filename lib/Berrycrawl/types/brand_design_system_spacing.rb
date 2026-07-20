# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemSpacing < Internal::Types::Model
      field :base_unit, -> { Integer }, optional: false, nullable: false, api_name: "baseUnit"

      field :border_radius, -> { String }, optional: true, nullable: false, api_name: "borderRadius"
    end
  end
end
