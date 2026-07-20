# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemTypographyFontSizes < Internal::Types::Model
      field :body, -> { String }, optional: true, nullable: false

      field :h1, -> { String }, optional: true, nullable: false

      field :h2, -> { String }, optional: true, nullable: false
    end
  end
end
