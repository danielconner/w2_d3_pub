require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Ram", 200.00)


  end

end
