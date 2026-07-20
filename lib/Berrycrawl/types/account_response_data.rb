# frozen_string_literal: true

module Berrycrawl
  module Types
    class AccountResponseData < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :credits, -> { Integer }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :lifetime_spend_usd, -> { Integer }, optional: false, nullable: false, api_name: "lifetimeSpendUsd"

      field :plan, -> { Berrycrawl::Types::AccountResponseDataPlan }, optional: false, nullable: false

      field :queue, -> { Berrycrawl::Types::AccountResponseDataQueue }, optional: false, nullable: false
    end
  end
end
