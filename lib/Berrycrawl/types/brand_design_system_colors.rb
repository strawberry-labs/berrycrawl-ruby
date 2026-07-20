# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandDesignSystemColors < Internal::Types::Model
      field :accent, -> { String }, optional: true, nullable: false

      field :background, -> { String }, optional: true, nullable: false

      field :link, -> { String }, optional: true, nullable: false

      field :primary, -> { String }, optional: true, nullable: false

      field :secondary, -> { String }, optional: true, nullable: false

      field :text_primary, -> { String }, optional: true, nullable: false, api_name: "textPrimary"
    end
  end
end
