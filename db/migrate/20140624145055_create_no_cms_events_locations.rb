class CreateNoCmsEventsLocations < ActiveRecord::Migration
  def change
    create_table :no_cms_events_locations do |t|
      t.string :name
      t.text :description
      t.float :lat
      t.float :lng

      t.timestamps
    end

    create_table :no_cms_events_location_translations do |t|

      t.belongs_to :no_cms_events_location, index: { name: 'index_nocms_events_location_translations_on_location_id' }
      t.string :locale
      t.string :title
      t.text :description

    end
  end
end
