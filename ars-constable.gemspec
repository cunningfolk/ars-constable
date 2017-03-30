# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ars/constable/version'

Gem::Specification.new do |spec|
  spec.name          = "ars-constable"
  spec.version       = Ars::Constable::VERSION
  spec.authors       = ["Michael Lee Vazquez"]
  spec.email         = ["magnus.nothus@gmail.com"]

  spec.summary       = %q{ars-constable-#{Ars::Constable::VERSION}}
  spec.description   = %q{Jail objects for ruby}
  spec.homepage      = "http://github.com/cunningfolk/ars"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
