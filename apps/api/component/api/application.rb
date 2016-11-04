# frozen_string_literal: true
require 'dry-web-roda'

module Api
  class Application < Dry::Web::Roda::Application
    route do |r|
      r.root do
        'This is the home of the notification api'
      end
    end
  end
end
