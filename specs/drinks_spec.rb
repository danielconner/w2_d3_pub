require('minitest/autorun')
require('minitest/rg')

require_relative('../drinks')

class DrinksTest < MiniTest::Test

  def setup
    @drinks = Drinks.new("Beer", 2.50, 1)
  end

  def test_drink_has_name
    assert_equal("Beer", @drinks.name)
  end

  def test_drink_has_price
    assert_equal(2.50, @drinks.price)
  end

end
