# frozen_string_literal: true

module Berrycrawl
  module Jobs
    module Types
      module ListJobsRequestType
        extend Berrycrawl::Internal::Types::Enum

        CRAWL = "crawl"
        EXTRACT = "extract"
      end
    end
  end
end
