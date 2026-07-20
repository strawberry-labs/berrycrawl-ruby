# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScreenshotViewportDto < Internal::Types::Model
      field :height, -> { Integer }, optional: false, nullable: false

      field :width, -> { Integer }, optional: false, nullable: false
    end
  end
end
