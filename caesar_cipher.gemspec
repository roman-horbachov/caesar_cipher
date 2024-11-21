# frozen_string_literal: true

require_relative "lib/caesar_cipher/version"

Gem::Specification.new do |spec|
  spec.name = "caesar_cipher"
  spec.version = CaesarCipher::VERSION
  spec.authors = ["Horbachov Roman"]
  spec.email = ["roman.horbachov@student.karazin.ua"]
  spec.homepage = "https://github.com/roman-horbachov/caesar_cipher"
  spec.licenses = ["MIT"]

  spec.homepage = "https://github.com/roman-horbachov/caesar_cipher"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/roman-horbachov/caesar_cipher"

  spec.summary = "Caesar's cipher."
  spec.required_ruby_version = ">= 3.0.0"

  gemspec = File.basename(__FILE__)
  spec.files = Dir["lib/**/*", "spec/**/*", "bin/*", "*.gemspec", "Gemfile", "Rakefile", "README.md"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
