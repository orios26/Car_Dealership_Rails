class QuotePresenter < BasePresenter
  delegate :quote,
  :ammortization_payments
  :a_interest, to: :@quote


  def initialize()
    @quote = quote
  end


end
