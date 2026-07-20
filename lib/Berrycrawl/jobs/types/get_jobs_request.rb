# frozen_string_literal: true

module Berrycrawl
  module Jobs
    module Types
      class GetJobsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
