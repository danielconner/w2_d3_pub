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

  def drink_has_been_bought()
    @drinks.pop()
  end


end
