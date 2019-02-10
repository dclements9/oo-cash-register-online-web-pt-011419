require 'pry'
class CashRegister
  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  def add_item(title, price, quantity = 1)
    #@total += (price*quantity)
    @total += price
  end
  def apply_discount
  if discount != 0
    @discount = @discount.to_f
    @total -= (@total *= (@discount/100))
    binding.pry
    end
  end
end
