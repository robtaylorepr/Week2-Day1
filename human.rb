class Human
  attr_accessor :name,
                :alertness,
                :has,
                :need,
                :my_coffee,
                :amount

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
    self.has       = false
    self.need      = true
    self.my_coffee = nil
    self.amount    = 0
  end

  def has_coffee?
    self.has
  end

  def needs_coffee?
    self.need
  end

  def buy(coffee)
    self.has       = true
    self.need      = false
    coffee.amount  = coffee.drinks_per_coffee
    @my_coffee     = coffee
  end

  def drink!
    if !my_coffee.empty?
      my_coffee.amount -= 1
      self.amount      += 1
      self.alertness   = self.amount * my_coffee.effect
    end
    my_coffee.full       = false
  end

end
