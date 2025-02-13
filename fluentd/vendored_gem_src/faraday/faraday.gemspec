# -*- encoding: utf-8 -*-
# stub: faraday 1.0.1 ruby lib spec/external_adapters

Gem::Specification.new do |s|
  s.name = "faraday".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/lostisland/faraday/issues", "changelog_uri" => "https://github.com/lostisland/faraday/releases/tag/v1.0.1", "homepage_uri" => "https://lostisland.github.io/faraday", "source_code_uri" => "https://github.com/lostisland/faraday" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze, "spec/external_adapters".freeze]
  s.authors = ["@technoweenie".freeze, "@iMacTia".freeze, "@olleolleolle".freeze]
  s.date = "2020-03-29"
  s.email = "technoweenie@gmail.com".freeze
  s.files = ["CHANGELOG.md".freeze, "LICENSE.md".freeze, "README.md".freeze, "Rakefile".freeze, "examples/client_spec.rb".freeze, "examples/client_test.rb".freeze, "lib/faraday.rb".freeze, "lib/faraday/adapter.rb".freeze, "lib/faraday/adapter/em_http.rb".freeze, "lib/faraday/adapter/em_http_ssl_patch.rb".freeze, "lib/faraday/adapter/em_synchrony.rb".freeze, "lib/faraday/adapter/em_synchrony/parallel_manager.rb".freeze, "lib/faraday/adapter/excon.rb".freeze, "lib/faraday/adapter/httpclient.rb".freeze, "lib/faraday/adapter/net_http.rb".freeze, "lib/faraday/adapter/net_http_persistent.rb".freeze, "lib/faraday/adapter/patron.rb".freeze, "lib/faraday/adapter/rack.rb".freeze, "lib/faraday/adapter/test.rb".freeze, "lib/faraday/adapter/typhoeus.rb".freeze, "lib/faraday/adapter_registry.rb".freeze, "lib/faraday/autoload.rb".freeze, "lib/faraday/connection.rb".freeze, "lib/faraday/dependency_loader.rb".freeze, "lib/faraday/encoders/flat_params_encoder.rb".freeze, "lib/faraday/encoders/nested_params_encoder.rb".freeze, "lib/faraday/error.rb".freeze, "lib/faraday/file_part.rb".freeze, "lib/faraday/logging/formatter.rb".freeze, "lib/faraday/middleware.rb".freeze, "lib/faraday/middleware_registry.rb".freeze, "lib/faraday/options.rb".freeze, "lib/faraday/options/connection_options.rb".freeze, "lib/faraday/options/env.rb".freeze, "lib/faraday/options/proxy_options.rb".freeze, "lib/faraday/options/request_options.rb".freeze, "lib/faraday/options/ssl_options.rb".freeze, "lib/faraday/param_part.rb".freeze, "lib/faraday/parameters.rb".freeze, "lib/faraday/rack_builder.rb".freeze, "lib/faraday/request.rb".freeze, "lib/faraday/request/authorization.rb".freeze, "lib/faraday/request/basic_authentication.rb".freeze, "lib/faraday/request/instrumentation.rb".freeze, "lib/faraday/request/multipart.rb".freeze, "lib/faraday/request/retry.rb".freeze, "lib/faraday/request/token_authentication.rb".freeze, "lib/faraday/request/url_encoded.rb".freeze, "lib/faraday/response.rb".freeze, "lib/faraday/response/logger.rb".freeze, "lib/faraday/response/raise_error.rb".freeze, "lib/faraday/utils.rb".freeze, "lib/faraday/utils/headers.rb".freeze, "lib/faraday/utils/params_hash.rb".freeze, "spec/external_adapters/faraday_specs_setup.rb".freeze, "spec/faraday/adapter/em_http_spec.rb".freeze, "spec/faraday/adapter/em_synchrony_spec.rb".freeze, "spec/faraday/adapter/excon_spec.rb".freeze, "spec/faraday/adapter/httpclient_spec.rb".freeze, "spec/faraday/adapter/net_http_persistent_spec.rb".freeze, "spec/faraday/adapter/net_http_spec.rb".freeze, "spec/faraday/adapter/patron_spec.rb".freeze, "spec/faraday/adapter/rack_spec.rb".freeze, "spec/faraday/adapter/typhoeus_spec.rb".freeze, "spec/faraday/adapter_registry_spec.rb".freeze, "spec/faraday/adapter_spec.rb".freeze, "spec/faraday/composite_read_io_spec.rb".freeze, "spec/faraday/connection_spec.rb".freeze, "spec/faraday/error_spec.rb".freeze, "spec/faraday/middleware_spec.rb".freeze, "spec/faraday/options/env_spec.rb".freeze, "spec/faraday/options/options_spec.rb".freeze, "spec/faraday/options/proxy_options_spec.rb".freeze, "spec/faraday/options/request_options_spec.rb".freeze, "spec/faraday/params_encoders/flat_spec.rb".freeze, "spec/faraday/params_encoders/nested_spec.rb".freeze, "spec/faraday/rack_builder_spec.rb".freeze, "spec/faraday/request/authorization_spec.rb".freeze, "spec/faraday/request/instrumentation_spec.rb".freeze, "spec/faraday/request/multipart_spec.rb".freeze, "spec/faraday/request/retry_spec.rb".freeze, "spec/faraday/request/url_encoded_spec.rb".freeze, "spec/faraday/request_spec.rb".freeze, "spec/faraday/response/logger_spec.rb".freeze, "spec/faraday/response/middleware_spec.rb".freeze, "spec/faraday/response/raise_error_spec.rb".freeze, "spec/faraday/response_spec.rb".freeze, "spec/faraday/utils/headers_spec.rb".freeze, "spec/faraday/utils_spec.rb".freeze, "spec/faraday_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support/disabling_stub.rb".freeze, "spec/support/fake_safe_buffer.rb".freeze, "spec/support/helper_methods.rb".freeze, "spec/support/shared_examples/adapter.rb".freeze, "spec/support/shared_examples/params_encoder.rb".freeze, "spec/support/shared_examples/request_method.rb".freeze, "spec/support/streaming_response_checker.rb".freeze, "spec/support/webmock_rack_app.rb".freeze]
  s.homepage = "https://lostisland.github.io/faraday".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.9".freeze
  s.summary = "HTTP/REST API client library.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multipart-post>.freeze, [">= 1.2", "< 3"])
    else
      s.add_dependency(%q<multipart-post>.freeze, [">= 1.2", "< 3"])
    end
  else
    s.add_dependency(%q<multipart-post>.freeze, [">= 1.2", "< 3"])
  end
end

