# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScreenshotCookieDto < Internal::Types::Model
      field :domain, -> { String }, optional: true, nullable: false

      field :http_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "httpOnly"

      field :name, -> { String }, optional: false, nullable: false

      field :path, -> { String }, optional: true, nullable: false

      field :same_site, -> { Berrycrawl::Types::ScreenshotCookieDtoSameSite }, optional: true, nullable: false, api_name: "sameSite"

      field :secure, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
