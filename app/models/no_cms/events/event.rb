module NoCms::Events
  class Event < ActiveRecord::Base
    translates :title, :description

    validates :title, :description, presence: true
  end
end
