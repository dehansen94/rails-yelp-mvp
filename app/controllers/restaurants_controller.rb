class RestaurantsController < ApplicationController

  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]
  before_action :set_restaurant, only: [:show, :edit, :update]

  def show
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # GET /restaurants/1/edit
  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  #   if @restaurant.save
  #     redirect_to @restaurant, notice: 'Restaurant was successfully created.'
  #     # Here: if the restaurant satisfies the validations --> it is saved, and restaurant.save
  #     # will return true. If not - render :new. This means that the form is rendered:
  #     # this means that the user will stay on the web page with the form and will get an error message.
  #   else
  #     render :new
  #   end
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end
