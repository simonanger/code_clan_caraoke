require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative("../guest.rb")
require_relative('../song.rb')

class GuestTest < Minitest::Test

  def setup()

    @guest1 = Guest.new("Simon", 20)
    @guest2 = Guest.new("Maisie", 50)
    @guest3 = Guest.new("Katie", 20)

  end

  def test_guest_details

    result = @guest1.name
    assert_equal("Simon", result)

  end





end
