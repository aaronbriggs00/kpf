class Location < ApplicationRecord
  belongs_to :group, optional: true
  has_many :images
  has_many :events
  has_many :actor_locations, dependent: :destroy
  has_many :actors, through: :actor_locations
end
