class Event < ApplicationRecord
  has_many :images
  has_many :event_actors, dependent: :destroy
  has_many :actors, through: :event_actors

  belongs_to :location
end
