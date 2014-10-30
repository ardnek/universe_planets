class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    planet_params = params.require(:planet).permit(:description, :date)
    @planet = Planet.find(planet_params)
    @planet.update(planet_params)
    redirect_to planets_path
  end


def create
  @planet = Planet.new
  @planet.date = params[:planet][:date]
    if @planet.save
      redirect_to planet_path(@planet.id)
    else
      # render :news
      redirect_to planets_path
    end
end

    def show
      @planet = Planet.find(params[:id])
    end

end
