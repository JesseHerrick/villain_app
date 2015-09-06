require 'test_helper'

class VillainTest < ActiveSupport::TestCase
  describe '#last_sighted' do
    before do
      @villain = Villain.find ActiveRecord::FixtureSet.identify(:joker)
    end

    it 'it should return last sighting' do
      expected = @villain.sightings.order(:updated_at).last.updated_at
      assert_equal @villain.last_sighted, expected
    end
  end
end
