# frozen_string_literal: true

module Berrycrawl
  module Internal
    module Types
      module Unknown
        include Berrycrawl::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
