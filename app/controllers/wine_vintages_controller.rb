class WineVintagesController < ApplicationController
  before_action :set_wine_vintage, only: [:show, :update, :destroy]

  # GET /wine_vintages
  def index
    @wine_vintages = WineVintage.all

    render json: @wine_vintages
  end

  # GET /wine_vintages/1
  def show
    render json: @wine_vintage
  end

  # POST /wine_vintages
  def create
    @wine_vintage = WineVintage.new(wine_vintage_params)

    if @wine_vintage.save
      render json: @wine_vintage, status: :created, location: @wine_vintage
    else
      render json: @wine_vintage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wine_vintages/1
  def update
    if @wine_vintage.update(wine_vintage_params)
      render json: @wine_vintage
    else
      render json: @wine_vintage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wine_vintages/1
  def destroy
    @wine_vintage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_vintage
      @wine_vintage = WineVintage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_vintage_params
      params.fetch(:wine_vintage, {})
    end
end
