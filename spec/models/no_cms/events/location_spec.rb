require 'spec_helper.rb'

describe NoCms::Events::Location do
  it_behaves_like "model with required attributes", :nocms_events_location, [:name]
end
