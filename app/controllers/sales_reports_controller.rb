class SalesReportsController < ApplicationController

  def index
    @employees = Report.sale_report
  end
end
