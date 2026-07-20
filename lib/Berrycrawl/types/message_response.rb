# frozen_string_literal: true

module Berrycrawl
  module Types
    class MessageResponse < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
