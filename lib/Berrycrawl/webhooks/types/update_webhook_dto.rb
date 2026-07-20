# frozen_string_literal: true

module Berrycrawl
  module Webhooks
    module Types
      class UpdateWebhookDto < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :events, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isActive"

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
