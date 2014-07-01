require 'globalize'
require 'friendly_id'
require "friendly_id/globalize"

module NoCms
  module Events
    class Engine < ::Rails::Engine
      isolate_namespace NoCms::Events
    end
  end
end
