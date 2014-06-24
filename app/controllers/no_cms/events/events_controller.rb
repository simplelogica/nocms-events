module NoCms::Events
  class EventsController < ApplicationController
    def index
      @events = Event.includes(translations: [], location: [:translations])
    end
  end
end
