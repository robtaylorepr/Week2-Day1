class Coffee
  attr_accessor   :full,
                  :amount,
                  :effect,
                  :drinks_per_coffee
  def initialize (coffee, full=true,amount=3,effect=0.31,drinks_per_coffee=3)
    @coffee = coffee
    @full   = full
    @amount = amount
    @effect = effect
    @drinks_per_coffee = drinks_per_coffee
    if coffee == "Expresso"
      @drinks_per_coffee = 1
    else
      @drinks_per_coffee = 3
    end
  end

  def full?
    self.full
  end

  def empty?
    # puts "coffee.amount is #{self.amount}"
    self.amount <= 0
  end

end
