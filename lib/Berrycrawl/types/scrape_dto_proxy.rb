# frozen_string_literal: true

module Berrycrawl
  module Types
    module ScrapeDtoProxy
      extend Berrycrawl::Internal::Types::Enum

      NONE = "none"
      BASIC = "basic"
      DATACENTER = "datacenter"
      RESIDENTIAL = "residential"
      STEALTH = "stealth"
      AUTO = "auto"
    end
  end
end
