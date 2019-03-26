# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-frosting"
  spec.version       = "0.1.0"
  spec.authors       = ["Ken Hansen"]
  spec.email         = ["k.e.hansen01@gmail.com"]

  spec.summary       = "A tasty theme for jekyll."
  spec.homepage      = "https://github.com/kenhansen01/jekyll-theme-frosting"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
