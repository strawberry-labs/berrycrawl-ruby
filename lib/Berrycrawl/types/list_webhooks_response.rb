# frozen_string_literal: true

module Berrycrawl
  module Types
    class ListWebhooksResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[Berrycrawl::Types::Webhook] }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
