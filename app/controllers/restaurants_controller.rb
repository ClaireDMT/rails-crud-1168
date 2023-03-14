class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :delete]
  # read ALL
  def index
    @restaurants = Restaurant.all # active record
  end

  # read ONE
  def show
  end

  # voir le formulaire de création
  def new
    @restaurant = Restaurant.new # instance vide
  end

  # créer la resource à partir du formulaire
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant.id) # redirige vers la show du restaurant
  end

  # voir le formulaire d'édition
  def edit
  end


  # mettre à jour le restaurant
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant) # passer l'objet > passer l'attribut id (c 'est mieux )
  end

  def destroy
    @restaurant.destroy # Active Record
    redirect_to restaurants_path, status: :see_other # redirection vers nouvelles resources
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :chef, :rating) # restaurant hash filtré
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id]) # active record
  end
end
