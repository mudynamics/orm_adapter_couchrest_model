# -*- encoding: utf-8 -*-
require File.expand_path('../lib/orm_adapter_couchrest_model/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "orm_adapter_couchrest_model"
  gem.version       = OrmAdapterCouchrestModel::VERSION
  gem.authors       = ["lainuo"]
  gem.email         = ["winfield301@gmail.com"]
  gem.description   = %q{ORM adapter for couchrest_model}
  gem.summary       = %q{ORM adapter for couchrest_model}
  gem.homepage      = "https://github.com/winfield/orm_adapter_couchrest_model"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activemodel', '>= 3.0.0'
  gem.add_dependency 'orm_adapter'
  gem.add_dependency 'couchrest_model', '2.0.0.beta2'

  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rake", ">= 0.8.7"
  gem.add_development_dependency "rspec", ">= 2.4.0"
end
