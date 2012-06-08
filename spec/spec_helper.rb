# -*- encoding : utf-8 -*-
# This file is copied to spec/ when you run 'rails generate rspec:install'
# Has been customized by Blacklight to work when application is in one place,
# and actual spec/ stuff is in another (the blacklight gem checkout).  

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app', 'models'))

ENV["RAILS_ENV"] ||= 'test'


if ENV['COVERAGE'] and RUBY_VERSION =~ /^1.9/
  require 'simplecov'
  require 'simplecov-rcov'

  SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
  SimpleCov.start do
    add_filter "/test_support/"
    add_filter "/tmp/"

    add_filter do |source_file|
      source_file.lines.count < 5
    end
  end
end

require 'rspec'
require 'hydra/mods'
require 'hydra/datastream/common_mods_index_methods'
require 'hydra/datastream/mods_basic'

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  config.mock_with :mocha

  config.color_enabled = true

end

def fixture(file)
  File.new(File.join(File.dirname(__FILE__), 'fixtures', file))
end


