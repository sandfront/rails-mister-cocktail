class DosesController < ApplicationController

  before_action :set_dose, only: [:destroy]

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    # if @dose.save
    @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    # else
    #   render 'new'
    # end
  end

  def destroy
    @dose.destroy
    redirect_to root_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
