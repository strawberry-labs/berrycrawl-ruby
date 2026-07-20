# frozen_string_literal: true

module Berrycrawl
  module Types
    class SummaryFormatDto < Internal::Types::Model
      field :query, -> { String }, optional: true, nullable: false

      field :type, -> { Berrycrawl::Types::SummaryFormatDtoType }, optional: false, nullable: false
    end
  end
end
