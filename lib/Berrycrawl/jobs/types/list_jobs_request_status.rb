# frozen_string_literal: true

module Berrycrawl
  module Jobs
    module Types
      module ListJobsRequestStatus
        extend Berrycrawl::Internal::Types::Enum

        PENDING = "PENDING"
        RUNNING = "RUNNING"
        COMPLETED = "COMPLETED"
        FAILED = "FAILED"
        CANCELLED = "CANCELLED"
      end
    end
  end
end
