# frozen_string_literal: true

module Berrycrawl
  module Types
    class AccountResponseDataPlan < Internal::Types::Model
      field :concurrency, -> { Integer }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :queue_limit, -> { Integer }, optional: false, nullable: false, api_name: "queueLimit"

      field :rate_limit_per_minute, -> { Integer }, optional: false, nullable: false, api_name: "rateLimitPerMinute"
    end
  end
end
