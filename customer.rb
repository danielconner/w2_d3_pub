class Customer

  attr_accessor :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def buys_drink(drink)
    @wallet -= drink
  end
end
