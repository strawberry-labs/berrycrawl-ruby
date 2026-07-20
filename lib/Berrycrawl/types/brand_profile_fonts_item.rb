# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandProfileFontsItem < Internal::Types::Model
      field :family, -> { String }, optional: false, nullable: false

      field :weights, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
