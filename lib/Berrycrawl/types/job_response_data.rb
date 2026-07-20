# frozen_string_literal: true

module Berrycrawl
  module Types
    class JobResponseData < Internal::Types::Model
      field :completed, -> { Integer }, optional: true, nullable: false

      field :completed_at, -> { String }, optional: true, nullable: false, api_name: "completedAt"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :credits_used, -> { Integer }, optional: false, nullable: false, api_name: "creditsUsed"

      field :error, -> { String }, optional: true, nullable: false

      field :failed, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :started_at, -> { String }, optional: true, nullable: false, api_name: "startedAt"

      field :status, -> { String }, optional: false, nullable: false

      field :total, -> { Integer }, optional: false, nullable: false

      field :type, -> { Berrycrawl::Types::JobSummaryType }, optional: false, nullable: false

      field :errors, -> { Internal::Types::Array[Berrycrawl::Types::JobResponseDataErrorsItem] }, optional: false, nullable: false

      field :result, -> { Object }, optional: true, nullable: false

      field :result_pagination, -> { Berrycrawl::Types::Pagination }, optional: false, nullable: false, api_name: "resultPagination"

      field :results, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: false, nullable: false
    end
  end
end
