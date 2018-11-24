class SummaryController < ApplicationController

  def index
    @quotes = Summary.exec_summary
  end
end
