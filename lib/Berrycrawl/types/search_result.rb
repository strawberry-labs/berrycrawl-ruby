# frozen_string_literal: true

module Berrycrawl
  module Types
    class SearchResult < Internal::Types::Model
      field :provider, -> { Berrycrawl::Types::SearchResultProvider }, optional: true, nullable: false

      field :published_date, -> { String }, optional: true, nullable: false, api_name: "publishedDate"

      field :snippet, -> { String }, optional: false, nullable: false

      field :source, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
