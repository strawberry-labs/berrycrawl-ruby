# frozen_string_literal: true

module Berrycrawl
  module Types
    class MapLink < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
