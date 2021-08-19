class CreateActorLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :actor_locations do |t|
      t.integer :actor_id
      t.integer :location_id

      t.timestamps
    end
  end
end
