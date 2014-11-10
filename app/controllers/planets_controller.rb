class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    planet_params = params.require(:planet).permit(:name, :date, :location, :description, :life_forms)
    @planet = Planet.new(planet_params)
    @planet.save
    redirect_to planets_path
  end

  def show
      @planet = Planet.find(params[:id])
  end

  def edit
      @planet = Planet.find(params[:id])
  end

  def update
    planet_params = params.require(:planet).permit(:name, :date, :location, :description, :life_forms)
      @planet = Planet.find(params[:id])
      @planet.update(planet_params)
      redirect_to planet_path(@planet)
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path
  end

end
