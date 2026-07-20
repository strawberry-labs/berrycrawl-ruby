# frozen_string_literal: true

module Berrycrawl
  module Types
    class Webhook < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :events, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :is_active, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isActive"

      field :recent_deliveries, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "recentDeliveries"

      field :secret, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
