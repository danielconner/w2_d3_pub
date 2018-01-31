class Customer

  attr_accessor :name, :wallet, :age, :drunkenness_level

  def initialize(name, wallet, age, drunkenness_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = drunkenness_level
  end

  def buys_drink(drink)
    @wallet -= drink.price
  end

  def drunkenness_level
     return @drunkenness_level
  end

  def increase_customer_drunkenness_level(drink)
    @drunkenness_level += drink.alcohol_level
  end






end
