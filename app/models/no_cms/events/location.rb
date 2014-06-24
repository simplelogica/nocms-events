module NoCms::Events
  class Location < ActiveRecord::Base
    translates :name, :description
    validates :name, presence: true
  end
end
