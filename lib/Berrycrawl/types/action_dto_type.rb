# frozen_string_literal: true

module Berrycrawl
  module Types
    module ActionDtoType
      extend Berrycrawl::Internal::Types::Enum

      WAIT = "wait"
      CLICK = "click"
      WRITE = "write"
      PRESS = "press"
      SCROLL = "scroll"
      SCRAPE = "scrape"
      SCREENSHOT = "screenshot"
      PDF = "pdf"
    end
  end
end
