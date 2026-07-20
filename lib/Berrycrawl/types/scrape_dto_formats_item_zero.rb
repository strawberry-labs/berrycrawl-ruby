# frozen_string_literal: true

module Berrycrawl
  module Types
    module ScrapeDtoFormatsItemZero
      extend Berrycrawl::Internal::Types::Enum

      MARKDOWN = "markdown"
      HTML = "html"
      RAWHTML = "rawhtml"
      LINKS = "links"
      IMAGES = "images"
      SUMMARY = "summary"
      JSON_ = "json"
      CHANGE_TRACKING = "changeTracking"
    end
  end
end
