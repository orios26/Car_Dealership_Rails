class Quote < ApplicationRecord
  belongs_to :vehicle
  belongs_to :customer
  belongs_to :employee


  scope :is_sold, -> {where(sold: true)}
  scope :not_sold, -> {where(sold: false)}
  #setting quote compund period to a class variable
  @@compound = 4
  @@interest_rate = 0.08
  @start_balance
  @end_balance
  @principal
  @am_int 


  def self.compound
    @@compound
  end

  def self.interest_rate
    @@interest_rate
  end


  def wholesale
    self.wholesale_price = self.vehicle.price
  end
  #method to round to 5 significant digits
  def rounder5(to_round)
    to_round.round(5)
  end

  #methods for quote calculations
  def mark_up_amt
    rounder5(self.vehicle.price * 0.082)
  end

  def tax_amt
    rounder5((self.vehicle.price + mark_up_amt) * 0.043)
  end

  def total_amt
    rounder5(self.vehicle.price + mark_up_amt + tax_amt)
  end

  def finance_amt
    rounder5(total_amt - self.down_payment)
  end

  def i_rate
    rounder5(Quote.interest_rate / Quote.compound)
  end

  def number_payments
    (self.term * Quote.compound).to_i
  end

  def ammoritization_numerator
    rounder5(total_amt * (i_rate * ((1 + i_rate) ** number_payments)))
  end

  def ammoritization_denominator
    rounder5(((1 + i_rate) ** number_payments) -1)
  end

  def ammortization_payments
    rounder5(ammoritization_numerator/ ammoritization_denominator)
  end

  def a_interest(amt)
    amt * i_rate
  end

end
