# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require File.expand_path('../lib/orm_adapter_couchrest_model/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["lainuo"]
  gem.email         = ["winfield301@gmail.com"]
  gem.description   = %q{couchrest_model orm adapter plugin}
  gem.summary       = %q{couchrest_model orm adapter plugin}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "orm_adapter_couchrest_model"
  gem.require_paths = ["lib"]
  gem.version       = OrmAdapterCouchrestModel::VERSION

  gem.add_dependency 'activemodel', '>= 3.0.0'
  gem.add_dependency 'orm_adapter'
  gem.add_dependency 'couchrest_model', '2.0.0.beta2'
end
