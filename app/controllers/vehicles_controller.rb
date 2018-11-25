class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.quote_not_sold.or(Vehicle.no_quote).paginate(:page =>  params[:page], per_page: 10)
    #@vehicles = Vehicle.all.paginate(:page =>  params[:page], per_page: 10)
    # @vehicles = Vehicle.paginate(:page => params[:page], per_page: 2)
    if params[:search]
      @search_term = params[:search]
      # @vehicles = Vehicle.find_by_sql("SELECT * FROM vehicles WHERE vin LIKE #{@search_term}
      # OR
      # SELECT * FROM vehicles
      # JOIN colors ON vehicles.color_id = colors_id WHERE colors.name LIKE #{@search_term}
      # OR
      # SELECT * FROM vehicles
      # JOIN models on vehicles.model_id = models_id WHERE models.name LIKE #{@search_term}")
      @vehicles = Vehicle.v_color(@search_term).paginate(:page =>  params[:page], per_page: 10)
    #   @vehicles = Vehicle.v_color(@search_term).paginate(:page => params[:page], per_page: 2)
    #   # @vehicles = @vehicles.search_by(@search_term)
    end

  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:vin, :color_id, :type_id, :model_id, :year, :price, :vehicle_image, :name )
    end
end
