# frozen_string_literal: true

module Berrycrawl
  module Brand
    module Types
      class BrandDto < Internal::Types::Model
        field :refresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :timeout, -> { Integer }, optional: true, nullable: false

        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
