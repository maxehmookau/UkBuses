require 'rubygems'
require 'bundler/setup'

require 'uk_buses'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
end

RSpec.configure do |config|
  # some (optional) config here
end