# frozen_string_literal: true

require_relative 'lib/switchs/version'

Gem::Specification.new do |spec|
  spec.name = 'switchs'
  spec.version = Switchs::VERSION
  spec.authors = ['ton-tonton']
  spec.email = ['phantom.ness@windowslive.com']

  spec.summary = 'Shuffle given string'
  spec.homepage = 'https://github.com/ton-tonton/switchs'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = ''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ton-tonton/switchs'
  spec.metadata['changelog_uri'] = 'https://github.com/ton-tonton/switchs/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
