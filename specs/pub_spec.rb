require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative("../drinks")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Ram", 200.00)
    @drink1 = Drinks.new("Beer", 2.50),
    @drink2 = Drinks.new("Wine", 4.50),
    @drink3 = Drinks.new("Spirits", 3.00 )
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
    @pub.drink_has_been_bought()
    assert_equal(2, @pub.drinks_count)
    end


end
