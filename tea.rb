class Tea < Coffee
  attr_accessor   :full,
                  :amount,
                  :effect,
                  :drinks_per_coffee
  def initialize (tea,full=true,amount=3,effect=0.25,drinks_per_coffee=3)
    @tea = tea
    @full   = full
    @amount = amount
    @effect = effect
    @drinks_per_coffee = drinks_per_coffee
  end
end
