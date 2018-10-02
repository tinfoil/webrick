# frozen_string_literal: true
begin
  require_relative 'lib/webrick/version'
rescue LoadError
  require_relative 'version'
end

Gem::Specification.new do |s|
  s.name = "webrick"
  s.version = WEBrick::VERSION
  s.summary = "HTTP server toolkit"
  s.description = "WEBrick is an HTTP server toolkit that can be configured as an HTTPS server, a proxy server, and a virtual-host server."

  s.require_path = %w{lib}
  s.files =  Dir['lib/**/*.rb']

  s.authors = ["TAKAHASHI Masayoshi", "GOTOU YUUZOU", "Eric Wong"]
  s.email = [nil, nil, 'normal@ruby-lang.org']
  s.homepage = "https://www.ruby-lang.org"
  s.license = "BSD-2-Clause"

  if s.respond_to?(:metadata=)
    s.metadata = {
      "bug_tracker_uri" => "https://bugs.ruby-lang.org/projects/ruby-trunk/issues",
      "homepage_uri" => "https://www.ruby-lang.org",
      "source_code_uri" => "https://svn.ruby-lang.org/repos/ruby"
    }
  end

  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit"
  s.add_development_dependency "minitest"
end
