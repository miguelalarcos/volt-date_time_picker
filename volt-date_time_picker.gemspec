# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'volt/date_time_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "volt-date_time_picker"
  spec.version       = Volt::DateTimePicker::VERSION
  spec.authors       = ["Miguel Ángel Alarcos Torrecillas"]
  spec.email         = ["miguel.alarcos@gmail.com"]
  spec.summary       = %q{A date time picker component for Volt.}
  spec.description   = %q{A date time picker component for Volt.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "volt", "~> 0.9.0"
  spec.add_development_dependency 'rspec', '~> 3.2.0'
  spec.add_development_dependency "rake"    

  spec.add_dependency "volt-font_awesome"
end

