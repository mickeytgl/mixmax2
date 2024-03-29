
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mixmax/version"

Gem::Specification.new do |spec|
  spec.name          = "mixmax"
  spec.version       = Mixmax::VERSION
  spec.authors       = ["Miguel Torres"]
  spec.email         = ["migueltg93@gmail.com"]

  spec.summary       = %q{Example short summary}
  spec.description   = %q{Example short summary}
  spec.homepage      = "https://github.com/mickeytgl/mixmax2"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "httparty", "~> 0.17.1"
end
