# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new
  end

  def rent!
    self.rented = true
  end

end





class Cargo
  MAX_CARGO_ITEMS = 10

  def initialize(capacity = MAX_CARGO_ITEMS)
    @capacity = capacity
    @cargo_contents = []
  end

  def add_cargo(item)
    @cargo_contents << item
  end

  def remove_cargo(item)
    @cargo_contents.remove(item)
  end

  def get_capacity
    @capacity
  end

  def get_remaining_capacity
    @capacity - @cargo_contents.size
  end
end
