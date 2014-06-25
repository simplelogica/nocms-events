module NoCms::Events
  class Event < ActiveRecord::Base

    translates :title, :description, :slug

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    belongs_to :location, class_name: "NoCms::Events::Location"

    scope :future, ->() { where(["starts_at > ? OR ends_at > ?", Time.now, Time.now]) }

    validates :title, presence: true

  end
end
