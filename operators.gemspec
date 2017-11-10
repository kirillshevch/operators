# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'operators/version'

Gem::Specification.new do |spec|
  spec.name          = "operators"
  spec.version       = Operators::VERSION
  spec.authors       = ["Kirill Shevchenko", "Yaroslav Bezrukavyi"]
  spec.email         = ["hello@kirillshevch.com", "yaroslav.bezrukavyi@gmail.com"]

  spec.summary       = %q{operators}
  spec.description   = %q{operators}
  spec.homepage      = "http://operators-rb.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
