# frozen_string_literal: true
module Api
  class Container < Dry::Web::Container
    require root.join('system/notification/container')
    import Notification::Container

    configure do |config|
      config.name = :api
      config.root = Pathname(__FILE__).join('../..').realpath.dirname.freeze
    end

    load_paths! 'component'
  end
end
