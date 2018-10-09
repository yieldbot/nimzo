lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require 'nimzo/version'

Gem::Specification.new do |s|
  s.authors                = ['Yieldbot, Inc.']
  s.bindir                 = 'bin'
  s.date                   = Date.today.to_s
  s.description            = 'Scripts and templates for generating useful monitoring alerts'
  s.email                  = '<devops@yieldbot.com>'
  s.homepage               = 'https://github.com/yieldbot/nimzo'
  s.license                = 'MIT'
  s.name                   = 'nimzo'
  s.platform               = Gem::Platform::RUBY
  s.required_ruby_version  = '>= 1.9.3'
  s.summary                = 'Scripts and templates for generating useful monitoring alerts'
  s.version                = Nimzo::Version::STRING

  s.files                  = Dir['{bin}/**/*', '{lib,spec}/**/*.rb', 'templates/**/*.erb', 'images/*.jpg', 'LICENSE', '*.md']
  s.executables            = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths          = %w(lib)

  s.add_runtime_dependency 'sensu-plugin', '1.2.0'

  s.add_development_dependency 'rubocop',       '~> 0.49.0'
  s.add_development_dependency 'rspec',         '~> 3.1'
  s.add_development_dependency 'bundler',       '~> 1.7'
  s.add_development_dependency 'rake',          '~> 10.0'
  s.add_development_dependency 'github-markup', '~> 1.3'
  s.add_development_dependency 'redcarpet',     '~> 3.2'
  s.add_development_dependency 'yard',          '~> 0.9.11'  
  s.add_development_dependency 'pry',           '~> 0.10'
end
