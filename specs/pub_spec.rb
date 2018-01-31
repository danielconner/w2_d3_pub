require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative("../drinks")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Ram", 200.00)

  end

  def test_pub_has_name
    assert_equal("The Ram", @pub.name)
  end

  def test_pub_has_till__value
    assert_equal(200, @pub.till)
  end

  def test_stock_count
    assert_equal(3, @pub.drinks_count)
  end

  def test_pub_has_drinks
    @pub.pub_has_drinks(@pub_stock)
    assert_equal(3, @pub.drinks_count)
  end



end
