class Actor < ApplicationRecord
  belongs_to :group, optional: true

  has_many :images
  has_many :event_actors, dependent: :destroy
  has_many :events, through: :event_actors
  has_many :actor_locations, dependent: :destroy
  has_many :locations,  through: :actor_locations
end
