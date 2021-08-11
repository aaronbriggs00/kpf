class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :group_id
      t.string :personality
      t.integer :stat0
      t.integer :stat1
      t.integer :stat2
      t.integer :stat3
      t.integer :stat4
      t.integer :stat5
      t.integer :stat6
      t.integer :stat7
      t.integer :stat8
      t.integer :stat9

      t.timestamps
    end
  end
end
