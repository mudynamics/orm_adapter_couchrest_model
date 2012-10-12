require 'rubygems'
$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'couchrest_model'
require 'orm_adapter'
require 'orm_adapter_couchrest_model'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
