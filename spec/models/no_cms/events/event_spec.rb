require 'spec_helper.rb'

describe NoCms::Events::Event do
  it_behaves_like "model with required attributes", :nocms_events_event, [:title]
end
