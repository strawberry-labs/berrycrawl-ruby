# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandResponseData < Internal::Types::Model
      field :brand, -> { Berrycrawl::Types::BrandProfile }, optional: false, nullable: false

      field :meta, -> { Berrycrawl::Types::BrandResponseDataMeta }, optional: false, nullable: false
    end
  end
end
