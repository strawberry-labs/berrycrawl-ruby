# frozen_string_literal: true

module Berrycrawl
  module Webhooks
    module Types
      class GetWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
