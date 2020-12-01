class WineWineriesController < ApplicationController
  before_action :set_wine_winery, only: [:show, :update, :destroy]

  # GET /wine_wineries
  def index
    @wine_wineries = WineWinery.all

    render json: @wine_wineries
  end

  # GET /wine_wineries/1
  def show
    render json: @wine_winery
  end

  # POST /wine_wineries
  def create
    @wine_winery = WineWinery.new(wine_winery_params)

    if @wine_winery.save
      render json: @wine_winery, status: :created, location: @wine_winery
    else
      render json: @wine_winery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wine_wineries/1
  def update
    if @wine_winery.update(wine_winery_params)
      render json: @wine_winery
    else
      render json: @wine_winery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wine_wineries/1
  def destroy
    @wine_winery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_winery
      @wine_winery = WineWinery.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_winery_params
      params.require(:wine_winery).permit(:wine_id, :winery_id)
    end
end
