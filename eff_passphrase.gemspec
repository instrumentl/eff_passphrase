# frozen_string_literal: true

require_relative "lib/eff_passphrase/version"

Gem::Specification.new do |spec|
  spec.name = "eff_passphrase"
  spec.version = EffPassphrase::VERSION
  spec.authors = ["Instrumentl, Inc."]
  spec.email = ["oss@instrumentl.com"]

  spec.summary = "Library for generating passphrases"
  spec.description = <<-EOF
    Library for using the EFF's list of Engliush passphrase words to generate
    a Diceware-style passphrase
  EOF
  spec.homepage = "https://github.com/instrumentl/eff_passphrase"
  spec.license = "ISC"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/instrumentl/eff_passphrase"
  spec.metadata["changelog_uri"] = "https://github.com/instrumentl/eff_passphrase/blob/main/CHANGELOG.md"

  spec.files = Dir["{wordlists,lib}/**/*", "LICENSE.txt", "README.md", "CHANGELOG.md"]
  spec.require_paths = ["lib"]
end
