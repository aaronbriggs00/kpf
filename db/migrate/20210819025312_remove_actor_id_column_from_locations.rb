class RemoveActorIdColumnFromLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :actor_id
  end
end
