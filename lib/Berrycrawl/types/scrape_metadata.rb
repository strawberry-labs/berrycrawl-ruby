# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScrapeMetadata < Internal::Types::Model
      field :content_type, -> { String }, optional: true, nullable: false, api_name: "contentType"

      field :status_code, -> { Integer }, optional: true, nullable: false, api_name: "statusCode"

      field :timestamp, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
