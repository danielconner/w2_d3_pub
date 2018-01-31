require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("David", 50.00)
  end

  def test_customer_has_name
    assert_equal("David", @customer.name)
  end

  def test_customer_has_wallet
    assert_equal(50.00, @customer.wallet)
  end
end
