class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :text
      t.datetime :date
      t.integer :location_id

      t.timestamps
    end
  end
end
