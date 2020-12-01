class VintagesController < ApplicationController
  before_action :set_vintage, only: [:show, :update, :destroy]

  # GET /vintages
  def index
    @vintages = Vintage.all

    render json: @vintages
  end

  # GET /vintages/1
  def show
    render json: @vintage
  end

  # POST /vintages
  def create
    @vintage = Vintage.new(vintage_params)

    if @vintage.save
      render json: @vintage, status: :created, location: @vintage
    else
      render json: @vintage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vintages/1
  def update
    if @vintage.update(vintage_params)
      render json: @vintage
    else
      render json: @vintage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vintages/1
  def destroy
    @vintage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vintage
      @vintage = Vintage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vintage_params
      params.fetch(:vintage, {})
    end
end
