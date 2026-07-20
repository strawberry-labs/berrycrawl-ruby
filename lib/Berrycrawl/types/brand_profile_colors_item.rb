# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandProfileColorsItem < Internal::Types::Model
      field :hex, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
