class Image < ApplicationRecord
  belongs_to :actor, optional: true
  belongs_to :group, optional: true
  belongs_to :event, optional: true
  belongs_to :location, optional: true

  scope :event_specific_image, -> (event_id)  {where(event_id: event_id)}
end
