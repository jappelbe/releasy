# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "relapse/version"

Gem::Specification.new do |s|
  s.name        = "relapse"
  s.version     = Relapse::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bil Bas (Spooner)"]
  s.email       = ["bil.bagpuss@gmail.com"]
  s.homepage    = "http://spooner.github.com/libraries/relapse/"
  s.summary     = %q{Relapse helps to make Ruby application releases simpler}
  s.description = <<END
#{s.summary}, by creating and archiving source folders, Windows folders,
standalone executables, installers and OS X app bundles.
END

  s.licenses = ["MIT", "GNU LGPL"] # Since I include a file from 7z.
  s.rubyforge_project = "relapse"

  s.requirements << '7z (optional; used to generate archives)'
  s.requirements << 'InnoSetup (optional on Windows; used to make Win32 installer)'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = Dir["test/**/*_test.rb"]
  s.executable    = "relapse"

  s.add_runtime_dependency('ocra', '~> 1.3.0')
  s.add_runtime_dependency('rake', '~> 0.9.2.2')
  s.add_runtime_dependency('cri', '~> 2.1.0')
  s.add_runtime_dependency('thor', '~> 0.14.6') # Only needed in Ruby 1.8, since it provides HashWithIndifferentAccess.

  s.add_development_dependency('riot', '~> 0.12.5')
  s.add_development_dependency('rr', '~> 1.0.4')
  s.add_development_dependency('yard', '~> 0.7.4')
  s.add_development_dependency('redcarpet', '~> 2.0.1')
end
