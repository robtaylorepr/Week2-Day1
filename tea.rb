class Tea
  attr_accessor   :full,
                  :amount,
                  :effect,
                  :drinks_per_tea
  def initialize (tea, full=true,amount=3,effect=0.31,drinks_per_tea=3)
    @tea = tea
    @full   = full
    @amount = amount
    @effect = effect
    @drinks_per_tea = drinks_per_tea
  end

  def full?
    self.full
  end

  def empty?
    # puts "tea.amount is #{self.amount}"
    self.amount <= 0
  end

end
