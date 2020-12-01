class WineFoodsController < ApplicationController
  before_action :set_wine_food, only: [:show, :update, :destroy]

  # GET /wine_foods
  def index
    @wine_foods = WineFood.all

    render json: @wine_foods
  end

  # GET /wine_foods/1
  def show
    render json: @wine_food
  end

  # POST /wine_foods
  def create
    @wine_food = WineFood.new(wine_food_params)

    if @wine_food.save
      render json: @wine_food, status: :created, location: @wine_food
    else
      render json: @wine_food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wine_foods/1
  def update
    if @wine_food.update(wine_food_params)
      render json: @wine_food
    else
      render json: @wine_food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wine_foods/1
  def destroy
    @wine_food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_food
      @wine_food = WineFood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_food_params
      params.fetch(:wine_food, {})
    end
end
