# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemImages < Internal::Types::Model
      field :favicon, -> { String }, optional: true, nullable: false

      field :logo, -> { String }, optional: true, nullable: false

      field :og_image, -> { String }, optional: true, nullable: false, api_name: "ogImage"
    end
  end
end
