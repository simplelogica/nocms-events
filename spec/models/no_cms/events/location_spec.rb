require 'spec_helper.rb'

describe NoCms::Events::Location do
  it_behaves_like "model with required attributes", :nocms_events_location, [:name]
    it_behaves_like "model with has many relationship", :nocms_events_location, :nocms_events_event, :events, :location
end
