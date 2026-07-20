# frozen_string_literal: true

module Berrycrawl
  module Types
    class ListJobsResponse < Internal::Types::Model
      field :data, -> { Berrycrawl::Types::ListJobsResponseData }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
