class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :actor_id
      t.integer :event_id
      t.integer :location_id
      t.integer :group_id

      t.timestamps
    end
  end
end
