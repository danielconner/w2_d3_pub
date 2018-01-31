require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative("../drinks")
require_relative("../customer")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Ram", 200.00,)
    @drink1 = Drinks.new("Beer", 2.50, 1)
    @drink2 = Drinks.new("Wine", 4.50, 2)
    @drink3 = Drinks.new("Spirits", 3.00, 3)
    @customer = Customer.new("David", 50.00, 22)
  end

  def test_pub_has_name
    assert_equal("The Ram", @pub.name)
  end

  def test_pub_has_till__value
    assert_equal(200, @pub.till)
  end

  def test_stock_count
    assert_equal(0, @pub.drinks_count)
  end

  def test_pub_has_drinks
    @pub.pub_has_drinks(@drink1)
    @pub.pub_has_drinks(@drink2)
    @pub.pub_has_drinks(@drink3)
    assert_equal(3, @pub.drinks_count)
  end

  def test_stock_decrease
    @pub.pub_has_drinks(@drink1)
    @pub.pub_has_drinks(@drink2)
    @pub.pub_has_drinks(@drink3)
    purchased_drink = @pub.drink_has_been_bought()
    assert_equal(2, @pub.drinks_count)
    end

  def test_pub_till_increases_by_drink_value
    @pub.pub_has_drinks(@drink1)
    @pub.pub_has_drinks(@drink2)
    @pub.pub_has_drinks(@drink3)
    purchased_drink = @pub.drink_has_been_bought()
    assert_equal(203.00, @pub.till_increase(purchased_drink.price))
  end

  def test_is_over_18
    result= @pub.is_over_18(@customer)
    assert_equal(true, result)
  end

end
