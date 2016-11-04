# frozen_string_literal: true
require 'dry/web/container'
require 'dry/web/umbrella'

module Notification
  class Container < Dry::Web::Umbrella
    configure do |config|
      config.name = :core
    end

    load_paths! 'system'
  end
end
