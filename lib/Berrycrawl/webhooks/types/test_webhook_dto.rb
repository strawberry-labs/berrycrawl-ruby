# frozen_string_literal: true

module Berrycrawl
  module Webhooks
    module Types
      class TestWebhookDto < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :event, -> { String }, optional: false, nullable: false

        field :payload, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
