module NoCms::Events
  class Location < ActiveRecord::Base

    translates :name, :description

    has_many :events, class_name: "NoCms::Events::Event"

    validates :name, presence: true

  end
end
