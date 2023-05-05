# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "example_gem"
  s.version       = "0.1.0"

  s.authors       = ["Bamboo Engineering"]
  s.email         = ["dev@bambooengineering.io"]

  s.summary       = "It's an example"

  s.files = Dir["{lib}/**/*"]
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
end
