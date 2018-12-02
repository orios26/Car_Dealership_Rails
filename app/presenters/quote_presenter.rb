class QuotePresenter < BasePresenter
  def initialize(quote)
    @quote = quote
    @start_balance
    @end_balance
    @principal
    @am_int
  end

  def new_start_balance(amt)
    @start_balance = (@quote.start_balance - amt)
  end

  def new_end_balance(amt)
    @end_balance = (@quote.end_balance - amt)
  end

  def principal_amt
    @principal = (@quote.ammortization_payments - @am_int)
  end


  def a_interest(amt)
      @am_int = (amt * quote.i_rate)
  end


end
