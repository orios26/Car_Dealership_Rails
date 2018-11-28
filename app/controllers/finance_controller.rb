class FinanceController < ApplicationController
  def index
    @quotes = Quote.not_sold
  end

  def show
    @quote = Quote.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = QuotePdf.new(@quote, view_context)

        send_data pdf.render,
          filename: "quote_#{@quote.id}-#{@quote.customer.full_name}#{@quote.vehicle.vehicle_details}",
          type: 'application/pdf'
      end
    end
  end
end
