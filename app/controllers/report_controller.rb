class ReportController < ApplicationController

  def index
    @employees = Report.employee_report
  end
end
