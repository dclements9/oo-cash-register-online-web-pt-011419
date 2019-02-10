require 'pry'
class CashRegister
  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item(title, price, quantity = 1)
    @total += (price*quantity)
  end
  def apply_discount
  if discount != 0
    @discount = @discount.to_f
    @total -= (@total *= (@discount/100))
    "After the discount, the total comes to $#{@total}."
    end
  end
end
