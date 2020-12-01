class CountryRegionsController < ApplicationController
  before_action :set_country_region, only: [:show, :update, :destroy]

  # GET /country_regions
  def index
    @country_regions = CountryRegion.all

    render json: @country_regions
  end

  # GET /country_regions/1
  def show
    render json: @country_region
  end

  # POST /country_regions
  def create
    @country_region = CountryRegion.new(country_region_params)

    if @country_region.save
      render json: @country_region, status: :created, location: @country_region
    else
      render json: @country_region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /country_regions/1
  def update
    if @country_region.update(country_region_params)
      render json: @country_region
    else
      render json: @country_region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /country_regions/1
  def destroy
    @country_region.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_region
      @country_region = CountryRegion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def country_region_params
      params.fetch(:country_region, {})
    end
end
