class Pub

  attr_accessor :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
    @pub_stock = [
      drink1 = Drinks.new("Beer", 2.50),
      drink2 = Drinks.new("Wine", 4.50),
      drink3 = Drinks.new("Spirits", 3.00 )
    ]
  end

  def drinks_count()
    return @pub_stock.count()
  end

  def pub_has_drinks(stock)
    @drinks << stock
  end

end
