# -*- encoding: utf-8 -*-
require File.expand_path('../lib/acts_as_rateable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ferenc Fekete", "Gabriel Gironda", "Michael Reinsch", "Anton Zaytsev"]
  gem.email         = "info@antonzaytsev.com"
  gem.description   = "Acts_as_rateable is a rails plugin providing a rating interface for ActiveRecord models."
  gem.summary       = "Rails plugin providing a rating interface for ActiveRecord models"
  gem.homepage      = "http://github.com/anton-zaytsev/acts_as_rateable"
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "acts_as_rateable"
  gem.require_paths = ['lib']
  gem.version       = '3.0.0'
  #s.rdoc_options  = ["--main", "README"]
  #s.extra_rdoc_files = ["README", "MIT-LICENSE"]
end


