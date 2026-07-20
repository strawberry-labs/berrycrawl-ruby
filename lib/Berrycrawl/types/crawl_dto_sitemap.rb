# frozen_string_literal: true

module Berrycrawl
  module Types
    module CrawlDtoSitemap
      extend Berrycrawl::Internal::Types::Enum

      INCLUDE = "include"
      SKIP = "skip"
      ONLY = "only"
    end
  end
end
