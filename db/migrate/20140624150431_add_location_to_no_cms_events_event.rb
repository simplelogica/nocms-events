class AddLocationToNoCmsEventsEvent < ActiveRecord::Migration
  def change
    add_reference :no_cms_events_events, :location, index: true
  end
end
