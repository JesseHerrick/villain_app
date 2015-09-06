class Villain < ActiveRecord::Base
  has_many :henchmen
  has_many :sightings

  # Public: Returns the DateTime of the Villain's last sighting.
  def last_sighted
    sightings.order(:updated_at).last.updated_at
  end
end
