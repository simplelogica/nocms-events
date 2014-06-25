require 'globalize'
require 'friendly_id'
require "friendly_id/globalize"

module NoCms::Events
  class Engine < ::Rails::Engine
    isolate_namespace NoCms::Events
  end
end
