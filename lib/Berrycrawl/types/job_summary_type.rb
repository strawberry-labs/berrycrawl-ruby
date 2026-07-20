# frozen_string_literal: true

module Berrycrawl
  module Types
    module JobSummaryType
      extend Berrycrawl::Internal::Types::Enum

      CRAWL = "crawl"
      EXTRACT = "extract"
    end
  end
end
