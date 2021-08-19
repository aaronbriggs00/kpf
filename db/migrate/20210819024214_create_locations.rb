class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :event_id
      t.integer :actor_id
      t.integer :group_id
      t.string :title
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
