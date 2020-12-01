class WineCountriesController < ApplicationController
  before_action :set_wine_country, only: [:show, :update, :destroy]

  # GET /wine_countries
  def index
    @wine_countries = WineCountry.all

    render json: @wine_countries
  end

  # GET /wine_countries/1
  def show
    render json: @wine_country
  end

  # POST /wine_countries
  def create
    @wine_country = WineCountry.new(wine_country_params)

    if @wine_country.save
      render json: @wine_country, status: :created, location: @wine_country
    else
      render json: @wine_country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wine_countries/1
  def update
    if @wine_country.update(wine_country_params)
      render json: @wine_country
    else
      render json: @wine_country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wine_countries/1
  def destroy
    @wine_country.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_country
      @wine_country = WineCountry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_country_params
      params.fetch(:wine_country, {})
    end
end
