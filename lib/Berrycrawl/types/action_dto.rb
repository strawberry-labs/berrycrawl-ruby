# frozen_string_literal: true

module Berrycrawl
  module Types
    class ActionDto < Internal::Types::Model
      field :amount, -> { Integer }, optional: true, nullable: false

      field :direction, -> { Berrycrawl::Types::ActionDtoDirection }, optional: true, nullable: false

      field :key, -> { String }, optional: true, nullable: false

      field :milliseconds, -> { Integer }, optional: true, nullable: false

      field :selector, -> { String }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :type, -> { Berrycrawl::Types::ActionDtoType }, optional: false, nullable: false
    end
  end
end
