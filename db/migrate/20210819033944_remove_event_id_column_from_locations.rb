class RemoveEventIdColumnFromLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :event_id
  end
end
