# frozen_string_literal: true
require 'pry' if ENV['RACK_ENV'] == 'development'

require_relative 'notification/container'

Notification::Container.finalize!

app_paths = Pathname(__FILE__).dirname.join('../apps').realpath.join('*')
Dir[app_paths].each { |f| require "#{f}/component/boot" }

require_relative 'notification/application'
