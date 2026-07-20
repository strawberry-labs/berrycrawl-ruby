# frozen_string_literal: true

module Berrycrawl
  module Types
    class JobResponseDataErrorsItem < Internal::Types::Model
      field :error, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
