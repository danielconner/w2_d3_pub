class Customer

  attr_accessor :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = 0
  end

  def buys_drink(drink)
    @wallet -= drink
  end

  def drunkenness_level
    return @drunkenness_level
  end






end
