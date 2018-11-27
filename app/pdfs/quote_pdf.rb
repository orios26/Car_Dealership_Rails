class QuotePdf < Prawn::Document

  def initialize(quote, view)
    super(top_margin: 70)
    @quote = quote
    @view = view
    text "Quote: ##{@quote.id}"
    quote_header
    quote_details
  end

  def quote_header
    text "Customer: #{@quote.customer.full_name}"
    text "Sales Person: #{@quote.employee.full_name}"
  end

  def monetize(n)
    @view.number_to_currency(n)
  end

  def percentage(n)
    @view.number_to_percentage(n *100, precision: 0)
  end

  def quote_details
    move_down 20
    text "Wholesale Price:", style: :bold
    text "#{monetize(@quote.vehicle.price)}"
    text "Fees:", style: :bold
    text "#{monetize(@quote.mark_up_amt)}"
    text "Sales Tax:", style: :bold
    text "#{monetize(@quote.tax_amt)}"
    text "Total Price:", style: :bold
    text "#{monetize(@quote.total_amt)}"
    text "Interest Rate:", style: :bold
    text "#{percentage(Quote.interest_rate)}"
    text "Term:", style: :bold
    text "#{@quote.term} years"
    text "# of Payments:", style: :bold
    text "#{@quote.number_payments.to_i}"
    text "Quartely Payments:", style: :bold
    text "#{monetize(@quote.ammortization_payments)}"
  end

end
