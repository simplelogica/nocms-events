module NoCms::Events
  class Event < ActiveRecord::Base
    translates :title, :description

    validates :title, presence: true
  end
end
