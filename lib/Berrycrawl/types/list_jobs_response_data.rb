# frozen_string_literal: true

module Berrycrawl
  module Types
    class ListJobsResponseData < Internal::Types::Model
      field :jobs, -> { Internal::Types::Array[Berrycrawl::Types::JobSummary] }, optional: false, nullable: false

      field :pagination, -> { Berrycrawl::Types::Pagination }, optional: false, nullable: false
    end
  end
end
