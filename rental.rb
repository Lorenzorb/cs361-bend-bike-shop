class Rental

  attr_reader :bike, :luggage

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage
  end


  # Should be = base price + ($2 x bike weight) + ($2 x luggage)
  def price
    bike.price + luggage.price
  end

  def weight
    bike.weight + luggage.weight
  end

end
