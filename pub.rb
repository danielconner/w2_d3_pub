class Pub

  attr_accessor :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

end
