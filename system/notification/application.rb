# frozen_string_literal: true
module Notification
  class Application < Roda
    route do |r|
      r.run Api::Application.freeze.app
    end
  end
end
