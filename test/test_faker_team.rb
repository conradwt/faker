require 'test_helper'

class TestFakerTeam < Minitest::Test

  def setup
    @tester = Faker::Team
  end

  def test_name
    assert @tester.name.match(/(\w+\.? ?){2}/)
  end

end
