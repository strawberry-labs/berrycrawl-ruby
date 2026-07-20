# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScrapeDtoFormatsItem < Internal::Types::Model
      extend Berrycrawl::Internal::Types::Union

      member -> { Berrycrawl::Types::ScrapeDtoFormatsItemZero }

      member -> { Berrycrawl::Types::JSONFormatDto }

      member -> { Berrycrawl::Types::SummaryFormatDto }

      member -> { Berrycrawl::Types::ChangeTrackingFormatDto }
    end
  end
end
