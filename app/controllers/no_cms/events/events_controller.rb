module NoCms::Events
  class EventsController < ApplicationController
    def index
      @events = Event.includes(translations: [], location: [:translations])
    end

    def show
      @event = Event.includes(translations: [], location: [:translations]).find params[:id]
    end
  end
end
