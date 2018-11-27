class SummaryController < ApplicationController

  def index
    @quotes = Summary.exec_summary
    @sales_people = Summary.salesp_summary
  end
end
