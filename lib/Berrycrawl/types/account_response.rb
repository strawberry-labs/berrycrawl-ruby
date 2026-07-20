# frozen_string_literal: true

module Berrycrawl
  module Types
    class AccountResponse < Internal::Types::Model
      field :data, -> { Berrycrawl::Types::AccountResponseData }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
