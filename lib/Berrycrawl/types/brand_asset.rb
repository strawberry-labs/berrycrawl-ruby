# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandAsset < Internal::Types::Model
      field :height, -> { Integer }, optional: true, nullable: false

      field :theme, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :width, -> { Integer }, optional: true, nullable: false
    end
  end
end
