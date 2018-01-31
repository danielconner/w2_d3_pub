require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drinks')
require_relative('../pub')


class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("David", 50.00)
    @drink = Drinks.new("beer", 2.50)
  end

  def test_customer_has_name
    assert_equal("David", @customer.name)
  end

  def test_customer_has_wallet
    assert_equal(50.00, @customer.wallet)
  end

  def test_customer_can_buys_drink
    assert_equal(47.50, @customer.buys_drink(@drink.price))
  end

end
