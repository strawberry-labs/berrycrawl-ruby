# frozen_string_literal: true

module Berrycrawl
  module Errors
    class ServerError < ResponseError
    end

    class ServiceUnavailableError < ApiError
    end
  end
end
