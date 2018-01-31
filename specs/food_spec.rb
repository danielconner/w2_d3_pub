require('minitest/autorun')
require('minitest/rg')

require_relative('../food')

class FoodTest < MiniTest::Test

  def setup
    @food = Food.new("Fish Pie", 5.00, 2)
  end

  def test_food_name
    assert_equal("Fish Pie", @food.name)
  end

  def test_food_price
    assert_equal(5.00, @food.price)
  end

  def test_food_rejuenation_level
    assert_equal(2, @food.rejuvenation_level)
  end
end
