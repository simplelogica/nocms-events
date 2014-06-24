module NoCms::Events
  class Event < ActiveRecord::Base

    translates :title, :description

    belongs_to :location, class_name: "NoCms::Events::Location"

    validates :title, presence: true

  end
end
