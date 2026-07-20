# frozen_string_literal: true

module Berrycrawl
  module Types
    class ScreenshotDto < Internal::Types::Model
      field :block_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "blockAds"

      field :click_selector, -> { String }, optional: true, nullable: false, api_name: "clickSelector"

      field :clip, -> { Berrycrawl::Types::ScreenshotClipDto }, optional: true, nullable: false

      field :color_scheme, -> { Berrycrawl::Types::ScreenshotDtoColorScheme }, optional: true, nullable: false, api_name: "colorScheme"

      field :cookies, -> { Internal::Types::Array[Berrycrawl::Types::ScreenshotCookieDto] }, optional: true, nullable: false

      field :delay, -> { Integer }, optional: true, nullable: false

      field :device, -> { Berrycrawl::Types::ScreenshotDtoDevice }, optional: true, nullable: false

      field :disable_animations, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "disableAnimations"

      field :format, -> { Berrycrawl::Types::ScreenshotDtoFormat }, optional: true, nullable: false

      field :full_page, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "fullPage"

      field :full_page_algorithm, -> { Berrycrawl::Types::ScreenshotDtoFullPageAlgorithm }, optional: true, nullable: false, api_name: "fullPageAlgorithm"

      field :headers, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :hide_fixed_elements, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hideFixedElements"

      field :hide_selectors, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "hideSelectors"

      field :location, -> { Berrycrawl::Types::ScreenshotLocationDto }, optional: true, nullable: false

      field :mask_color, -> { String }, optional: true, nullable: false, api_name: "maskColor"

      field :mask_selectors, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "maskSelectors"

      field :max_height, -> { Integer }, optional: true, nullable: false, api_name: "maxHeight"

      field :omit_background, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "omitBackground"

      field :proxy, -> { Berrycrawl::Types::ScreenshotDtoProxy }, optional: true, nullable: false

      field :quality, -> { Integer }, optional: true, nullable: false

      field :reduced_motion, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "reducedMotion"

      field :remove_chat_widgets, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "removeChatWidgets"

      field :remove_cookie_banners, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "removeCookieBanners"

      field :remove_overlays, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "removeOverlays"

      field :response_format, -> { Berrycrawl::Types::ScreenshotDtoResponseFormat }, optional: true, nullable: false, api_name: "responseFormat"

      field :scale, -> { Berrycrawl::Types::ScreenshotDtoScale }, optional: true, nullable: false

      field :scroll_delay, -> { Integer }, optional: true, nullable: false, api_name: "scrollDelay"

      field :scroll_page, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "scrollPage"

      field :selector, -> { String }, optional: true, nullable: false

      field :styles, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :timeout, -> { Integer }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :viewport, -> { Berrycrawl::Types::ScreenshotViewportDto }, optional: true, nullable: false

      field :wait_for_selector, -> { String }, optional: true, nullable: false, api_name: "waitForSelector"

      field :wait_until, -> { Berrycrawl::Types::ScreenshotDtoWaitUntil }, optional: true, nullable: false, api_name: "waitUntil"
    end
  end
end
