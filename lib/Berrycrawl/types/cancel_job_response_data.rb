# frozen_string_literal: true

module Berrycrawl
  module Types
    class CancelJobResponseData < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
