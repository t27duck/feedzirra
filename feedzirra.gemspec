# -*- encoding: utf-8 -*-
require File.expand_path('../lib/feedzirra/version', __FILE__)

Gem::Specification.new do |s|
  s.name    = 'feedzirra'
  s.version = Feedzirra::VERSION

  s.authors  = ['Paul Dix', 'Julien Kirch', "Ezekiel Templin"]
  s.email    = 'feedzirra@googlegroups.com'
  s.homepage = 'http://github.com/pauldix/feedzirra'

  s.summary     = 'A feed fetching and parsing library'
  s.description = 'A library designed to retrieve and parse feeds as quickly as possible'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']
  
  s.platform = Gem::Platform::RUBY

  s.add_dependency 'nokogiri'
  s.add_dependency 'sax-machine'
  s.add_dependency 'curb'

  s.add_development_dependency 'rspec', '~> 2.13.0'
end
