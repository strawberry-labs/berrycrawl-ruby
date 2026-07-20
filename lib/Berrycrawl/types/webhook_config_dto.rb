# frozen_string_literal: true

module Berrycrawl
  module Types
    class WebhookConfigDto < Internal::Types::Model
      field :events, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :secret, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
