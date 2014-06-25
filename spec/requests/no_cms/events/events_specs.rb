require 'spec_helper'

describe NoCms::Events::Event do

  context "when visiting events index" do

    let(:events) { create_list :nocms_events_event, 3 }

    before do
      events.each(&:save!)
      visit no_cms_events.events_path
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display events") do
      events.each do |event|
        expect(page).to have_selector('li', text: event.title)
      end
    end

    it("should link to news event pages") do
      events.each do |event|
        expect(page).to have_selector "a[href='#{no_cms_events.event_path(event)}']"
      end
    end

  end

  context "when visiting an item page" do

    let(:event) { create :nocms_events_event }

    before do
      event.save!
      visit no_cms_events.event_path event
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display the news item") do
      expect(page).to have_selector('h1', text: event.title)
      expect(page).to have_content(event.description)
    end

  end

end
