# frozen_string_literal: true
require 'bundler'
Bundler.setup

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new :spec
  task default: [:spec]
rescue LoadError
  p 'Could not load rspec rake task'
end
