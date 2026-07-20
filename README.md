# Berrycrawl Ruby SDK


The official Ruby SDK for scraping, crawling, searching, mapping, structured extraction, screenshots, and brand profiles.

[Documentation](https://docs.berrycrawl.com) · [Dashboard](https://berrycrawl.com/app) · [GitHub](https://github.com/strawberry-labs/berrycrawl-ruby)

## Table of Contents

- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Errors](#errors)
- [Advanced](#advanced)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Additional Headers](#additional-headers)
  - [Additional Query Parameters](#additional-query-parameters)
- [Contributing](#contributing)

## Reference

A full reference for this library is available [here](./reference.md).

## Usage

Set `BERRYCRAWL_API_KEY` to an API key from the [Berrycrawl dashboard](https://berrycrawl.com/app).

```ruby
require "berrycrawl"

client = Berrycrawl::Client.new(api_key: ENV.fetch("BERRYCRAWL_API_KEY"))
page = client.scrape(url: "https://example.com/pricing")
puts page.data["markdown"]
```

### Crawl, search, and map

```ruby
job = client.crawl(url: "https://example.com/docs", limit: 50)
results = client.search(query: "best headless browser libraries", limit: 10)
site_map = client.map(url: "https://example.com", search: "documentation")
```

### Retrieve a brand profile

```ruby
brand = client.brand.retrieve(url: "https://stripe.com")
puts brand.data
```

## Environments

This SDK allows you to configure different environments or custom URLs for API requests. You can either use the predefined environments or specify your own custom URL.
### Environments
```ruby
require "Berrycrawl"

Berrycrawl = Berrycrawl::Client.new(
    base_url: Berrycrawl::Environment::PRODUCTION
)
```

### Custom URL
```ruby
require "Berrycrawl"

client = Berrycrawl::Client.new(
    base_url: "https://example.com"
)
```

## Errors

Failed API calls will raise errors that can be rescued from granularly.

```ruby
require "Berrycrawl"

client = Berrycrawl::Client.new(
    base_url: "https://example.com"
)

begin
    result = client.brand.retrieve
rescue Berrycrawl::Errors::TimeoutError
    puts "API didn't respond before our timeout elapsed"
rescue Berrycrawl::Errors::ServiceUnavailableError
    puts "API returned status 503, is probably overloaded, try again later"
rescue Berrycrawl::Errors::ServerError
    puts "API returned some other 5xx status, this is probably a bug"
rescue Berrycrawl::Errors::ResponseError => e
    puts "API returned an unexpected status other than 5xx: #{e.code} #{e.message}"
rescue Berrycrawl::Errors::ApiError => e
    puts "Some other error occurred when calling the API: #{e.message}"
end
```

## Advanced

### Retries

The SDK is instrumented with automatic retries. A request will be retried as long as the request is deemed
retryable and the number of retry attempts has not grown larger than the configured retry limit (default: 2).

A request is deemed retryable when any of the following HTTP status codes is returned:

- [408](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/408) (Timeout)
- [429](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/429) (Too Many Requests)
- [5XX](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#server_error_responses) (Internal Server Error)

The `retryStatusCodes` configuration controls which [5XX](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#server_error_responses) status codes are retried:

- `legacy` (default): Retries `408`, `429`, `500`, `502`, `503`, `504`, `521`, `522`, `524`
- `recommended`: Retries `408`, `429`, `502`, `503`, `504` only (excludes `500 Internal Server Error` to avoid retrying non-idempotent failures)

Use the `max_retries` option to configure this behavior.

```ruby
require "Berrycrawl"

client = Berrycrawl::Client.new(
    base_url: "https://example.com",
    max_retries: 3  # Configure max retries (default is 2)
)
```

### Timeouts

The SDK defaults to a 60 second timeout. Use the `timeout` option to configure this behavior.

```ruby
require "Berrycrawl"

response = client.brand.retrieve(
    ...,
    timeout: 30  # 30 second timeout
)
```

### Additional Headers

If you would like to send additional headers as part of the request, use the `additional_headers` request option.

```ruby
require "Berrycrawl"

response = client.brand.retrieve(
    ...,
    request_options: {
        additional_headers: {
            "X-Custom-Header" => "custom-value"
        }
    }
)
```

### Additional Query Parameters

If you would like to send additional query parameters as part of the request, use the `additional_query_parameters` request option.

```ruby
require "Berrycrawl"

response = client.brand.retrieve(
    ...,
    request_options: {
        additional_query_parameters: {
            "custom_param" => "custom-value"
        }
    }
)
```

## Contributing

While we value open-source contributions to this SDK, this library is generated programmatically.
Additions made directly to this library would have to be moved over to our generation code,
otherwise they would be overwritten upon the next generated release. Feel free to open a PR as
a proof of concept, but know that we will not be able to merge it as-is. We suggest opening
an issue first to discuss with us!

On the other hand, contributions to the README are always very welcome!
