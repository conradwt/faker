require 'test_helper'

class TestFakerApp < Minitest::Test
  def setup
    @tester = Faker::App
  end

  def test_name
    assert @tester.author.match(/(\w+\.? ?){2,3}/)
  end

end
