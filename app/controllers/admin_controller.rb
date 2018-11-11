class AdminController < ApplicationController
  def index
    @total_vehicles = Vehicle.count
  end
end
