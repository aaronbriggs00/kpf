class Group < ApplicationRecord
  has_many :images
  has_many :actors
  has_many :locations
end
