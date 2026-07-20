# frozen_string_literal: true

module Berrycrawl
  module Types
    class AccountResponseDataQueue < Internal::Types::Model
      field :active, -> { Integer }, optional: false, nullable: false

      field :waiting, -> { Integer }, optional: false, nullable: false
    end
  end
end
