class Villain < ActiveRecord::Base
  has_many :henchmen
  has_many :sightings
end
