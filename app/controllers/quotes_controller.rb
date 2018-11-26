class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all.paginate(:page => params[:page], per_page: 2)

    if params[:search]
      @search_term = params[:search]
      @quotes = @quotes.search_by(@search_term).paginate(:page => params[:page], per_page: 1)
    end
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    @quote = Quote.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = QuotePdf.new(@quote)

        send_data pdf.render,
          filename: "quote_#{@quote.id}-#{@quote.customer.full_name}#{@quote.vehicle.vehicle_details}",
          type: 'application/pdf'
      end
    end
  end

  def calculations
    quote = Quote.find(params[:id])
    render json: QuotePresenter.new(quote)
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(quote_params)

    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:vehicle_id, :customer_id, :employee_id, :wholesale_price, :term, :markup_price, :tax, :total_price, :sold)
    end
end
