# frozen_string_literal: true

module Berrycrawl
  module Types
    class Pagination < Internal::Types::Model
      field :limit, -> { Integer }, optional: false, nullable: false

      field :page, -> { Integer }, optional: false, nullable: false

      field :total, -> { Integer }, optional: false, nullable: false

      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"
    end
  end
end
