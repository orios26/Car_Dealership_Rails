class QuotePresenter < SimpleDelegator
  def as_json(*)
    {
      vehicle: @object.vehicle
      customer: @object.customer
      employee: @object.employee
      base_price: @object.wholesale_price
      fees: @object.mark_up_amt
      tax: @object.tax_amt
      payments: @object.number_payments
      total_price: @object.ammortization_payments
    }
  end
end
