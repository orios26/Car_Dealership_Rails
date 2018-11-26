class QuotePdf < Prawn::Document

  def initialize(quote)
    super(top_margin: 70)
    @quote = quote
    text "Quote #{@quote.id}"
    quote_header
    quote_details
  end

  def quote_header
    text "Customer: #{@quote.customer.full_name}"
    text "Sales Person: #{@quote.employee.full_name}"
  end

  def quote_details
    move_down 20
    text "Wholesale Price:", style: :bold
    text "$#{@quote.vehicle.price}"
    text "Fees:", style: :bold
    text "#{@quote.mark_up_amt}"
    text "Sales Tax:", style: :bold
    text "#{@quote.tax_amt}"
    text "Total Price:", style: :bold
    text "#{@quote.total_amt}"
    text "Interest Rate:", style: :bold
    text "#{Quote.interest_rate}"
    text "Term:", style: :bold
    text "#{@quote.term}"
    text "# of Payments:", style: :bold
    text "#{@quote.number_payments}"
    text "Quartely Payments:", style: :bold
    text "#{@quote.ammortization_payments}"
  end

end
