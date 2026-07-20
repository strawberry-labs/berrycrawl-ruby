# frozen_string_literal: true

module Berrycrawl
  module Types
    class JobCreatedResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :invalid_ur_ls, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "invalidURLs"

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
