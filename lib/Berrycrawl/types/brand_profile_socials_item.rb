# frozen_string_literal: true

module Berrycrawl
  module Types
    class BrandProfileSocialsItem < Internal::Types::Model
      field :network, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
