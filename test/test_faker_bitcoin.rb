require 'test_helper'

class TestFakerBitcoin < Minitest::Test

  def test_address
    assert Faker::Bitcoin.address.match(/^[13][1-9A-Za-z][^OIl]{20,40}/)
  end

  def test_testnet_address
    assert_match /\A[mn][1-9A-Za-z]{32,34}\Z/, Faker::Bitcoin.testnet_address
    refute_match /[OIl]/, Faker::Bitcoin.testnet_address
  end

end
