# frozen_string_literal: true

module Berrycrawl
  module Types
    module ScreenshotDtoWaitUntil
      extend Berrycrawl::Internal::Types::Enum

      DOMCONTENTLOADED = "domcontentloaded"
      LOAD = "load"
      NETWORKIDLE = "networkidle"
    end
  end
end
