# Bike


class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, basePrice, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @basePrice = basePrice
    @weight = weight
  end

  def price
    @basePrice + ( 2 * @weight )
  end


end
