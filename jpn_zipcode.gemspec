# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jpn_zipcode/version'

Gem::Specification.new do |spec|
  spec.name          = "jpn_zipcode"
  spec.version       = JpnZipcode::VERSION
  spec.authors       = ["Etsuro Yoshino"]
  spec.email         = ["a1549ey@aiitac.jp"]

  spec.summary       = %q{"get address from 7 numbers"}
  spec.description   = %q{"put paramater 7 number in strings"}
  spec.homepage      = "http://aiit.ac.jp/"
  spec.license       = "AIIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
#  if spec.respond_to?(:metadata)
#    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
#  else
#    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
#  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
