require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../guest')

class TestBar < MiniTest::Test

  def setup()
    @drink1 = Drink.new( "Gin", 3.50 )
    @drink2 = Drink.new( "Pint", 3 )
  end

  def test_drink_name
    result = @drink1.drink_name
    assert_equal("Gin", result)
  end

  def test_drink_price
    result = @drink2.drink_price
    assert_equal(3, result)
  end


end
