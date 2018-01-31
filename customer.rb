class Customer

  attr_accessor :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = 0
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
