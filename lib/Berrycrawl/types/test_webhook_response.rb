# frozen_string_literal: true

module Berrycrawl
  module Types
    class TestWebhookResponse < Internal::Types::Model
      field :event, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
