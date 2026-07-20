# frozen_string_literal: true

module Berrycrawl
  module Jobs
    module Types
      class ListJobsRequest < Internal::Types::Model
        field :type, -> { Berrycrawl::Jobs::Types::ListJobsRequestType }, optional: true, nullable: false

        field :status, -> { Berrycrawl::Jobs::Types::ListJobsRequestStatus }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
