lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ramsey_cop/version"

Gem::Specification.new do |spec|
  spec.name          = "ramsey_cop"
  spec.version       = RamseyCop::VERSION
  spec.authors       = ["Rick Peyton", "John Sloan"]
  spec.email         = ["rick.peyton@daveramsey.com", "john.sloan@daveramsey.com"]

  spec.summary       = "Ramsey style guides and shared style configs."
  spec.homepage      = "https://github.com/ramseyinhouse/ramsey-cop"
  spec.license       = "GPLv3"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
