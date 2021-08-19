class EventActor < ApplicationRecord
  belongs_to :event
  belongs_to :actor

  scope :search, -> (event_id, actor_id) { where(event_id: event_id).where(actor_id: actor_id)}
end
