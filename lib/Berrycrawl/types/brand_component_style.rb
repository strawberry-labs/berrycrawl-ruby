# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandComponentStyle < Internal::Types::Model
      field :background, -> { String }, optional: true, nullable: false

      field :border_color, -> { String }, optional: true, nullable: false, api_name: "borderColor"

      field :border_radius, -> { String }, optional: true, nullable: false, api_name: "borderRadius"

      field :shadow, -> { String }, optional: true, nullable: false

      field :text_color, -> { String }, optional: true, nullable: false, api_name: "textColor"
    end
  end
end
