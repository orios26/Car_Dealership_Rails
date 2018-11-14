class Quote < ApplicationRecord
  belongs_to :vehicle
  belongs_to :customer
  belongs_to :sales_person

  def mark_up_amt
    self.vehicle.price * 0.082
  end

  def tax_amt
    (self.vehicle.price + mark_up_amt) * 0.043
  end

  def total_amt
    self.vehicle.price + mark_up_amt + tax_amt
  end

  def finance_amt
    total_amt - self.down_payment
  end
  #
  # def monthly_payment_amt
  #   finance_amt((1 + (self.interest_rate/4))power(4 * self.term))
  # end

end
