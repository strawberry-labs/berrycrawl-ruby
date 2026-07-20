# frozen_string_literal: true

module Berrycrawl
  module Types
    class WebhookResponse < Internal::Types::Model
      field :data, -> { Berrycrawl::Types::Webhook }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
