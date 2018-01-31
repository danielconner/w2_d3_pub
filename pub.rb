class Pub

  attr_accessor :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

  def drinks_count()
    return @drinks.count()
  end

  def pub_has_drinks(stock)
    @drinks << stock
  end

  # def stock_copy
  #   copy = @pub_stock
  #   return copy
  # end

  def drink_has_been_bought
    @drinks.pop()
  end

  def till_increase(drink)
    @till += drink
  end

  def is_over_18(customer)
    if customer.age >= 18
      return true
    end
  end

  def is_customer_too_drunk(customer)
    if customer.drunkenness_level >= 5
      return "refuse service"
    else
      return "what drink do you want?"
    end
  end
end
