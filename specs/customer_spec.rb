require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drinks')
require_relative('../pub')
require_relative('../food')


class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("David", 50.00, 22, 5)
    @drink = Drinks.new("beer", 2.50, 1)
    @drink2 = Drinks.new("wine", 3.50, 2)
    @food = Food.new("Fish Pie", 5.00, 2)
  end

  def test_customer_has_name
    assert_equal("David", @customer.name)
  end

  def test_customer_has_wallet
    assert_equal(50.00, @customer.wallet)
  end

  def test_current_drunk_level
    assert_equal(5, @customer.drunkenness_level)
  end

  def test_customer_can_buys_drink
    @customer.buys_drink(@drink)
    assert_equal(47.50, @customer.wallet)

  end

  def test_customer_buys_drink_drunkenness_level_increases
    @customer.buys_drink(@drink2)
    @customer.increase_customer_drunkenness_level(@drink2)
    assert_equal(7, @customer.drunkenness_level)
  end


  def test_customer_can_buys_food
    @customer.buys_food(@food)
    assert_equal(45.00, @customer.wallet)
  end

  def test_decrease_drunkenness_level
    @customer.buys_food(@food)
    @customer.decrease_customer_drunkenness_level(@food)
    assert_equal(3, @customer.drunkenness_level)
  end

end
