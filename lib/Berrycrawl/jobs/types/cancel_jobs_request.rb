# frozen_string_literal: true

module Berrycrawl
  module Jobs
    module Types
      class CancelJobsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
