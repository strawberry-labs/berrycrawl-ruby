# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScrapeResponseCredits < Internal::Types::Model
      field :used, -> { Integer }, optional: false, nullable: false
    end
  end
end
