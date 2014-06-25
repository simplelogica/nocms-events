class AddSlugToNoCmsEventsEventTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_events_event_translations, :slug, :string
  end
end
