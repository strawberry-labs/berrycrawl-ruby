# Reference
<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">crawl</a>(request) -> Berrycrawl::Types::JobCreatedResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.crawl(url: "https://example.com")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**allow_external_links:** `Internal::Types::Boolean` — Whether to allow crawling external domains
    
</dd>
</dl>

<dl>
<dd>

**allow_subdomains:** `Internal::Types::Boolean` — Whether to allow crawling subdomains
    
</dd>
</dl>

<dl>
<dd>

**crawl_entire_domain:** `Internal::Types::Boolean` — Whether to crawl entire domain or just subtree
    
</dd>
</dl>

<dl>
<dd>

**deduplicate_similar_ur_ls:** `Internal::Types::Boolean` — Deduplicate similar URLs using intelligent matching
    
</dd>
</dl>

<dl>
<dd>

**delay:** `Integer` — Delay between page scrapes in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**exclude_paths:** `Internal::Types::Array[String]` — Regex patterns to exclude paths
    
</dd>
</dl>

<dl>
<dd>

**ignore_query_parameters:** `Internal::Types::Boolean` — Ignore query parameters when deduplicating URLs
    
</dd>
</dl>

<dl>
<dd>

**include_paths:** `Internal::Types::Array[String]` — Regex patterns to include paths
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of pages to crawl
    
</dd>
</dl>

<dl>
<dd>

**max_concurrency:** `Integer` — Maximum number of concurrent scrapes for this crawl
    
</dd>
</dl>

<dl>
<dd>

**max_discovery_depth:** `Integer` — Maximum depth for URL discovery
    
</dd>
</dl>

<dl>
<dd>

**prompt:** `String` — Natural language instructions for crawl configuration
    
</dd>
</dl>

<dl>
<dd>

**scrape_options:** `Internal::Types::Hash[String, Object]` — Scrape options to apply to each page. actions accepts at most 25 bounded browser actions. zeroDataRetention: true is currently rejected with 400 ZERO_DATA_RETENTION_NOT_SUPPORTED.
    
</dd>
</dl>

<dl>
<dd>

**sitemap:** `Berrycrawl::Types::CrawlDtoSitemap` — Sitemap handling strategy
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Starting URL to crawl
    
</dd>
</dl>

<dl>
<dd>

**webhook:** `Berrycrawl::Types::WebhookConfigDto` — Webhook configuration
    
</dd>
</dl>

<dl>
<dd>

**zero_data_retention:** `Internal::Types::Boolean` — Reserved for a future zero-data-retention mode. true is currently rejected with 400 ZERO_DATA_RETENTION_NOT_SUPPORTED; omit or use false.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">extract</a>(request) -> Berrycrawl::Types::JobCreatedResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.extract(prompt: "Extract all product names, prices, and descriptions from these pages")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**agent:** `Berrycrawl::Types::AgentConfigDto` — Agent configuration
    
</dd>
</dl>

<dl>
<dd>

**enable_web_search:** `Internal::Types::Boolean` — Enable web search for URL discovery
    
</dd>
</dl>

<dl>
<dd>

**ignore_invalid_ur_ls:** `Internal::Types::Boolean` — Ignore invalid URLs and process remaining valid ones
    
</dd>
</dl>

<dl>
<dd>

**ignore_sitemap:** `Internal::Types::Boolean` — Ignore sitemap during URL discovery
    
</dd>
</dl>

<dl>
<dd>

**include_subdomains:** `Internal::Types::Boolean` — Include subdomains in extraction
    
</dd>
</dl>

<dl>
<dd>

**prompt:** `String` — Natural language prompt describing what to extract. Maximum 16384 UTF-8 bytes.
    
</dd>
</dl>

<dl>
<dd>

**schema:** `Internal::Types::Hash[String, Object]` — JSON Schema for structured output. Serialized schema is limited to 65536 UTF-8 bytes.
    
</dd>
</dl>

<dl>
<dd>

**scrape_options:** `Internal::Types::Hash[String, Object]` — Scrape options for each URL. zeroDataRetention: true is currently rejected with 400 ZERO_DATA_RETENTION_NOT_SUPPORTED.
    
</dd>
</dl>

<dl>
<dd>

**show_sources:** `Internal::Types::Boolean` — Include source citations in response
    
</dd>
</dl>

<dl>
<dd>

**urls:** `Internal::Types::Array[String]` — 1–20 unique public HTTP(S) URLs. May be omitted only when enableWebSearch is true. Each URL is limited to 2048 UTF-8 bytes.
    
</dd>
</dl>

<dl>
<dd>

**webhook:** `Berrycrawl::Types::ExtractWebhookConfigDto` — Webhook configuration
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">map</a>(request) -> Berrycrawl::Types::MapResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.map(url: "https://example.com")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ignore_query_parameters:** `Internal::Types::Boolean` — Ignore query parameters when discovering URLs
    
</dd>
</dl>

<dl>
<dd>

**include_subdomains:** `Internal::Types::Boolean` — Include subdomains in the map
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of URLs to return
    
</dd>
</dl>

<dl>
<dd>

**location:** `Berrycrawl::Types::LocationDto` — Location configuration
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Search filter for URLs
    
</dd>
</dl>

<dl>
<dd>

**sitemap:** `Berrycrawl::Types::MapDtoSitemap` — How to handle sitemaps
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — Timeout for map operation in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — URL to map
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">parse</a>(request) -> Berrycrawl::Types::ScrapeResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.parse(url: "https://example.com/report.pdf")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**timeout:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Public PDF, Word document, or spreadsheet URL
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">scrape</a>(request) -> Berrycrawl::Types::ScrapeResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.scrape
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**actions:** `Internal::Types::Array[Berrycrawl::Types::ActionDto]` — Browser actions to execute
    
</dd>
</dl>

<dl>
<dd>

**block_ads:** `Internal::Types::Boolean` — Enable ad-blocking and cookie popup blocking
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — Domain to scrape. Normalized to https://domain when url is omitted.
    
</dd>
</dl>

<dl>
<dd>

**exclude_tags:** `Internal::Types::Array[String]` — CSS selectors to exclude
    
</dd>
</dl>

<dl>
<dd>

**extraction_schema:** `Internal::Types::Hash[String, Object]` — Schema for structured data extraction (used with json format)
    
</dd>
</dl>

<dl>
<dd>

**formats:** `Internal::Types::Array[Berrycrawl::Types::ScrapeDtoFormatsItem]` — Output formats - can be simple strings or format objects with options
    
</dd>
</dl>

<dl>
<dd>

**headers:** `Internal::Types::Hash[String, Object]` — Custom headers
    
</dd>
</dl>

<dl>
<dd>

**include_tags:** `Internal::Types::Array[String]` — CSS selectors to include
    
</dd>
</dl>

<dl>
<dd>

**location:** `Berrycrawl::Types::LocationDto` — Location settings
    
</dd>
</dl>

<dl>
<dd>

**max_age:** `Integer` — Cache max age in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**mobile:** `Internal::Types::Boolean` — Emulate mobile device for scraping
    
</dd>
</dl>

<dl>
<dd>

**only_main_content:** `Internal::Types::Boolean` — Extract only main content
    
</dd>
</dl>

<dl>
<dd>

**proxy:** `Berrycrawl::Types::ScrapeDtoProxy` — Proxy mode. auto starts direct and escalates only when blocked. basic is an alias for none.
    
</dd>
</dl>

<dl>
<dd>

**remove_base64_images:** `Internal::Types::Boolean` — Remove base64 images from output (keeps alt text)
    
</dd>
</dl>

<dl>
<dd>

**screenshot_as_base64:** `Internal::Types::Boolean` — Return screenshot/PDF output inline as a base64 data URL instead of an uploaded CDN URL. Default false (a CDN URL is returned).
    
</dd>
</dl>

<dl>
<dd>

**skip_tls_verification:** `Internal::Types::Boolean` — Skip TLS certificate verification
    
</dd>
</dl>

<dl>
<dd>

**store_in_cache:** `Internal::Types::Boolean` — Store result in cache
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — Request timeout in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — URL to scrape. Either url or domain is required.
    
</dd>
</dl>

<dl>
<dd>

**wait_for:** `Integer` — Wait time before scraping (ms)
    
</dd>
</dl>

<dl>
<dd>

**zero_data_retention:** `Internal::Types::Boolean` — Reserved for a future zero-data-retention mode. true is currently rejected with 400 ZERO_DATA_RETENTION_NOT_SUPPORTED; omit or use false.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">screenshot</a>(request) -> Berrycrawl::Types::ScrapeResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cookie banners, blocking overlays, chat widgets, and lazy loading are handled by default. Every cleanup pass can be controlled per request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.screenshot(url: "https://example.com")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**block_ads:** `Internal::Types::Boolean` — Block common advertising and analytics requests
    
</dd>
</dl>

<dl>
<dd>

**click_selector:** `String` — Click this CSS selector before capture
    
</dd>
</dl>

<dl>
<dd>

**clip:** `Berrycrawl::Types::ScreenshotClipDto` — Capture an exact pixel rectangle instead of the page
    
</dd>
</dl>

<dl>
<dd>

**color_scheme:** `Berrycrawl::Types::ScreenshotDtoColorScheme` 
    
</dd>
</dl>

<dl>
<dd>

**cookies:** `Internal::Types::Array[Berrycrawl::Types::ScreenshotCookieDto]` — Cookies to set before loading the page
    
</dd>
</dl>

<dl>
<dd>

**delay:** `Integer` — Extra settling time after the page is ready, in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**device:** `Berrycrawl::Types::ScreenshotDtoDevice` — Named viewport preset
    
</dd>
</dl>

<dl>
<dd>

**disable_animations:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**format:** `Berrycrawl::Types::ScreenshotDtoFormat` 
    
</dd>
</dl>

<dl>
<dd>

**full_page:** `Internal::Types::Boolean` — Capture the complete page instead of only the viewport
    
</dd>
</dl>

<dl>
<dd>

**full_page_algorithm:** `Berrycrawl::Types::ScreenshotDtoFullPageAlgorithm` — auto uses native capture for normal pages and stitched slices for very tall pages
    
</dd>
</dl>

<dl>
<dd>

**headers:** `Internal::Types::Hash[String, Object]` — Headers sent while loading the page
    
</dd>
</dl>

<dl>
<dd>

**hide_fixed_elements:** `Internal::Types::Boolean` — Show fixed/sticky UI once instead of repeating it in stitched captures
    
</dd>
</dl>

<dl>
<dd>

**hide_selectors:** `Internal::Types::Array[String]` — Hide matching elements before capture
    
</dd>
</dl>

<dl>
<dd>

**location:** `Berrycrawl::Types::ScreenshotLocationDto` 
    
</dd>
</dl>

<dl>
<dd>

**mask_color:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**mask_selectors:** `Internal::Types::Array[String]` — Cover matching elements with a solid privacy mask
    
</dd>
</dl>

<dl>
<dd>

**max_height:** `Integer` — Maximum full-page height. Prevents endless captures on infinite pages.
    
</dd>
</dl>

<dl>
<dd>

**omit_background:** `Internal::Types::Boolean` — Use a transparent background where the page allows it
    
</dd>
</dl>

<dl>
<dd>

**proxy:** `Berrycrawl::Types::ScreenshotDtoProxy` — Proxy mode
    
</dd>
</dl>

<dl>
<dd>

**quality:** `Integer` — JPEG or WebP quality
    
</dd>
</dl>

<dl>
<dd>

**reduced_motion:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**remove_chat_widgets:** `Internal::Types::Boolean` — Hide common support and chat widgets
    
</dd>
</dl>

<dl>
<dd>

**remove_cookie_banners:** `Internal::Types::Boolean` — Accept known consent dialogs, hide remaining cookie banners, and restore page scrolling
    
</dd>
</dl>

<dl>
<dd>

**remove_overlays:** `Internal::Types::Boolean` — Remove newsletter gates, modal backdrops, and blocking overlays
    
</dd>
</dl>

<dl>
<dd>

**response_format:** `Berrycrawl::Types::ScreenshotDtoResponseFormat` — Return a CDN URL or an inline data URL
    
</dd>
</dl>

<dl>
<dd>

**scale:** `Berrycrawl::Types::ScreenshotDtoScale` — Capture at CSS pixel size or the emulated device pixel ratio
    
</dd>
</dl>

<dl>
<dd>

**scroll_delay:** `Integer` — Pause between lazy-load scroll steps, in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**scroll_page:** `Internal::Types::Boolean` — Scroll through the page first so lazy content is loaded
    
</dd>
</dl>

<dl>
<dd>

**selector:** `String` — Capture one element instead of the page
    
</dd>
</dl>

<dl>
<dd>

**styles:** `Internal::Types::Array[String]` — CSS rules to apply before capture
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Public webpage URL to capture
    
</dd>
</dl>

<dl>
<dd>

**viewport:** `Berrycrawl::Types::ScreenshotViewportDto` — Custom viewport. Overrides the named device dimensions.
    
</dd>
</dl>

<dl>
<dd>

**wait_for_selector:** `String` — Wait for this CSS selector before capture
    
</dd>
</dl>

<dl>
<dd>

**wait_until:** `Berrycrawl::Types::ScreenshotDtoWaitUntil` — Page readiness milestone used before capture
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/Berrycrawl/client.rb">search</a>(request) -> Berrycrawl::Types::SearchResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.search(query: "machine learning tutorials")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**categories:** `Internal::Types::Array[String]` — Category filters
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country code
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of results
    
</dd>
</dl>

<dl>
<dd>

**location:** `String` — Location for geo-targeting
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Search query
    
</dd>
</dl>

<dl>
<dd>

**sources:** `Internal::Types::Array[String]` — Source types to search
    
</dd>
</dl>

<dl>
<dd>

**tbs:** `String` — Time-based filter (e.g., qdr:d for past day)
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — Timeout for search operation in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Account
<details><summary><code>client.account.<a href="/lib/Berrycrawl/account/client.rb">get</a>() -> Berrycrawl::Types::AccountResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.account.get
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Berrycrawl::Account::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Brand
<details><summary><code>client.brand.<a href="/lib/Berrycrawl/brand/client.rb">retrieve</a>(request) -> Berrycrawl::Types::BrandResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send one website URL. BerryCrawl returns the brand identity found on that site.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.brand.retrieve(url: "https://stripe.com")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**refresh:** `Internal::Types::Boolean` — Ignore a cached profile and fetch the website again
    
</dd>
</dl>

<dl>
<dd>

**timeout:** `Integer` — Maximum time to spend building the profile, in milliseconds
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The public website whose brand profile should be extracted
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Brand::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Jobs
<details><summary><code>client.jobs.<a href="/lib/Berrycrawl/jobs/client.rb">list</a>() -> Berrycrawl::Types::ListJobsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.jobs.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**type:** `Berrycrawl::Jobs::Types::ListJobsRequestType` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Berrycrawl::Jobs::Types::ListJobsRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Jobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.jobs.<a href="/lib/Berrycrawl/jobs/client.rb">get</a>(id:) -> Berrycrawl::Types::JobResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.jobs.get(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Jobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.jobs.<a href="/lib/Berrycrawl/jobs/client.rb">cancel</a>(id:) -> Berrycrawl::Types::CancelJobResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.jobs.cancel(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Jobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Webhooks
<details><summary><code>client.webhooks.<a href="/lib/Berrycrawl/webhooks/client.rb">list</a>() -> Berrycrawl::Types::ListWebhooksResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Berrycrawl::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/Berrycrawl/webhooks/client.rb">create</a>(request) -> Berrycrawl::Types::WebhookResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.create(
  events: %w[crawl.completed extract.failed],
  url: "https://api.example.com/webhooks"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**events:** `Internal::Types::Array[String]` — Event types to subscribe to
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Webhook URL to send events to
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/Berrycrawl/webhooks/client.rb">get</a>(id:) -> Berrycrawl::Types::WebhookResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.get(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/Berrycrawl/webhooks/client.rb">delete</a>(id:) -> Berrycrawl::Types::MessageResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/Berrycrawl/webhooks/client.rb">update</a>(id:, request) -> Berrycrawl::Types::WebhookResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**events:** `Internal::Types::Array[String]` — Event types to subscribe to
    
</dd>
</dl>

<dl>
<dd>

**is_active:** `Internal::Types::Boolean` — Enable or disable webhook
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — Webhook URL to send events to
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/Berrycrawl/webhooks/client.rb">test</a>(id:, request) -> Berrycrawl::Types::TestWebhookResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.test(
  id: "id",
  event: "crawl.completed"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**event:** `String` — Event type to test
    
</dd>
</dl>

<dl>
<dd>

**payload:** `Internal::Types::Hash[String, Object]` — Optional custom payload for testing
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Berrycrawl::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

