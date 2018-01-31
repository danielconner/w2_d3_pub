class Customer

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buys_drink(drink)
    @wallet -= drink
  end
end
