# frozen_string_literal: true

module Berrycrawl
  module Types
    class ParseDto < Internal::Types::Model
      field :timeout, -> { Integer }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
