# frozen_string_literal: true
require_relative 'system/boot'
run Notification::Application.freeze.app
