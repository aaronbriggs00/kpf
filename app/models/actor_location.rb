class ActorLocation < ApplicationRecord
  belongs_to :actor
  belongs_to :location

  scope :search, -> (location_id, actor_id) { where(location_id: location_id).where(actor_id: actor_id)}
end
