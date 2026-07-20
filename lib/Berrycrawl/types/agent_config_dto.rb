# frozen_string_literal: true

module Berrycrawl
  module Types
    class AgentConfigDto < Internal::Types::Model
      field :mode, -> { Berrycrawl::Types::AgentConfigDtoMode }, optional: true, nullable: false

      field :model, -> { String }, optional: true, nullable: false
    end
  end
end
